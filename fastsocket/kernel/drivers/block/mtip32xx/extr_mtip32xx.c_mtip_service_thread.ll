; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_service_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_service_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i32, %struct.mtip_port* }
%struct.mtip_port = type { i32, i32*, i32 }

@MTIP_PF_PAUSE_IO = common dso_local global i32 0, align 4
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i64 0, align 8
@MTIP_PF_SVC_THD_ACTIVE_BIT = common dso_local global i64 0, align 8
@MTIP_PF_ISSUE_CMDS_BIT = common dso_local global i64 0, align 8
@MTIP_PF_REBUILD_BIT = common dso_local global i64 0, align 8
@MTIP_DDF_REBUILD_FAILED_BIT = common dso_local global i64 0, align 8
@MTIP_PF_SVC_THD_STOP_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtip_service_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_service_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtip_port*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.driver_data*
  store %struct.driver_data* %10, %struct.driver_data** %3, align 8
  %11 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %12 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 2
  %17 = load %struct.mtip_port*, %struct.mtip_port** %16, align 8
  store %struct.mtip_port* %17, %struct.mtip_port** %8, align 8
  br label %18

18:                                               ; preds = %1, %147
  %19 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %20 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %23 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %28 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MTIP_PF_PAUSE_IO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %26, %18
  %35 = phi i1 [ false, %18 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @wait_event_interruptible(i32 %21, i32 %36)
  %38 = call i64 (...) @kthread_should_stop()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %148

41:                                               ; preds = %34
  %42 = load i64, i64* @MTIP_DDF_REMOVE_PENDING_BIT, align 8
  %43 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %44 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %43, i32 0, i32 1
  %45 = call i32 @test_bit(i64 %42, i32* %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %148

49:                                               ; preds = %41
  %50 = load i64, i64* @MTIP_PF_SVC_THD_ACTIVE_BIT, align 8
  %51 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %52 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i64 %50, i32* %52)
  %54 = load i64, i64* @MTIP_PF_ISSUE_CMDS_BIT, align 8
  %55 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %56 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %55, i32 0, i32 0
  %57 = call i32 @test_bit(i64 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %115

59:                                               ; preds = %49
  store i64 1, i64* %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %62

62:                                               ; preds = %59, %100, %101
  %63 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %64 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @find_next_bit(i32* %65, i32 %66, i64 %67)
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp eq i64 %69, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp uge i64 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = icmp uge i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %71
  br label %110

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %62
  %83 = load i64, i64* %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = icmp eq i64 %83, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i64, i64* %4, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %90, %82
  %93 = load i64, i64* %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = icmp eq i64 %93, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i64 1, i64* %4, align 8
  store i64 1, i64* %6, align 8
  br label %62

101:                                              ; preds = %92
  %102 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @mtip_issue_ncq_command(%struct.mtip_port* %102, i64 %103)
  %105 = load i64, i64* %4, align 8
  %106 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %107 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @clear_bit(i64 %105, i32* %108)
  br label %62

110:                                              ; preds = %80
  %111 = load i64, i64* @MTIP_PF_ISSUE_CMDS_BIT, align 8
  %112 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %113 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %112, i32 0, i32 0
  %114 = call i32 @clear_bit(i64 %111, i32* %113)
  br label %136

115:                                              ; preds = %49
  %116 = load i64, i64* @MTIP_PF_REBUILD_BIT, align 8
  %117 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %118 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %117, i32 0, i32 0
  %119 = call i32 @test_bit(i64 %116, i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %115
  %122 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %123 = call i32 @mtip_ftl_rebuild_poll(%struct.driver_data* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* @MTIP_DDF_REBUILD_FAILED_BIT, align 8
  %127 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %128 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %127, i32 0, i32 1
  %129 = call i32 @set_bit(i64 %126, i32* %128)
  br label %130

130:                                              ; preds = %125, %121
  %131 = load i64, i64* @MTIP_PF_REBUILD_BIT, align 8
  %132 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %133 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %132, i32 0, i32 0
  %134 = call i32 @clear_bit(i64 %131, i32* %133)
  br label %135

135:                                              ; preds = %130, %115
  br label %136

136:                                              ; preds = %135, %110
  %137 = load i64, i64* @MTIP_PF_SVC_THD_ACTIVE_BIT, align 8
  %138 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %139 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %138, i32 0, i32 0
  %140 = call i32 @clear_bit(i64 %137, i32* %139)
  %141 = load i64, i64* @MTIP_PF_SVC_THD_STOP_BIT, align 8
  %142 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  %143 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %142, i32 0, i32 0
  %144 = call i32 @test_bit(i64 %141, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %148

147:                                              ; preds = %136
  br label %18

148:                                              ; preds = %146, %48, %40
  ret i32 0
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i64 @find_next_bit(i32*, i32, i64) #1

declare dso_local i32 @mtip_issue_ncq_command(%struct.mtip_port*, i64) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @mtip_ftl_rebuild_poll(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
