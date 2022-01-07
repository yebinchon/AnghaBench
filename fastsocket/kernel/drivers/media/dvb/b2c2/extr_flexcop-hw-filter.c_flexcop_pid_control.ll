; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, i64, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"setting pid: %5d %04x at index %d '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@index_reg_310 = common dso_local global i32 0, align 4
@pid_n_reg_314 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flexcop_device*, i32, i32, i32)* @flexcop_pid_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexcop_pid_control(%struct.flexcop_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.flexcop_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 8192
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %130

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @deb_ts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23, i8* %27)
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %60 [
    i32 0, label %30
    i32 1, label %35
    i32 2, label %40
    i32 3, label %45
    i32 4, label %50
    i32 5, label %55
  ]

30:                                               ; preds = %20
  %31 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @flexcop_pid_Stream1_PID_ctrl(%struct.flexcop_device* %31, i32 %32, i32 %33)
  br label %130

35:                                               ; preds = %20
  %36 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @flexcop_pid_Stream2_PID_ctrl(%struct.flexcop_device* %36, i32 %37, i32 %38)
  br label %130

40:                                               ; preds = %20
  %41 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @flexcop_pid_PCR_PID_ctrl(%struct.flexcop_device* %41, i32 %42, i32 %43)
  br label %130

45:                                               ; preds = %20
  %46 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @flexcop_pid_PMT_PID_ctrl(%struct.flexcop_device* %46, i32 %47, i32 %48)
  br label %130

50:                                               ; preds = %20
  %51 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @flexcop_pid_EMM_PID_ctrl(%struct.flexcop_device* %51, i32 %52, i32 %53)
  br label %130

55:                                               ; preds = %20
  %56 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @flexcop_pid_ECM_PID_ctrl(%struct.flexcop_device* %56, i32 %57, i32 %58)
  br label %130

60:                                               ; preds = %20
  %61 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %62 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %129

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 38
  br i1 %67, label %68, label %129

68:                                               ; preds = %65
  %69 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %70 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %69, i32 0, i32 1
  %71 = load { i64, i32 } (%struct.flexcop_device*, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)** %70, align 8
  %72 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %73 = load i32, i32* @index_reg_310, align 4
  %74 = call { i64, i32 } %71(%struct.flexcop_device* %72, i32 %73)
  store { i64, i32 } %74, { i64, i32 }* %12, align 8
  %75 = bitcast { i64, i32 }* %12 to i8*
  %76 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 8 %75, i64 12, i1 false)
  %77 = bitcast %struct.TYPE_10__* %10 to i8*
  %78 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 12, i1 false)
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 6
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %84 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %83, i32 0, i32 0
  %85 = load i32 (%struct.flexcop_device*, i32, i64, i32)*, i32 (%struct.flexcop_device*, i32, i64, i32)** %84, align 8
  %86 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %87 = load i32, i32* @index_reg_310, align 4
  %88 = bitcast { i64, i32 }* %13 to i8*
  %89 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 12, i1 false)
  %90 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %91 = load i64, i64* %90, align 4
  %92 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %85(%struct.flexcop_device* %86, i32 %87, i64 %91, i32 %93)
  %95 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %96 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %95, i32 0, i32 1
  %97 = load { i64, i32 } (%struct.flexcop_device*, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)** %96, align 8
  %98 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %99 = load i32, i32* @pid_n_reg_314, align 4
  %100 = call { i64, i32 } %97(%struct.flexcop_device* %98, i32 %99)
  store { i64, i32 } %100, { i64, i32 }* %15, align 8
  %101 = bitcast { i64, i32 }* %15 to i8*
  %102 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 8 %101, i64 12, i1 false)
  %103 = bitcast %struct.TYPE_10__* %9 to i8*
  %104 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 12, i1 false)
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %68
  %108 = load i32, i32* %7, align 4
  br label %110

109:                                              ; preds = %68
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 8191, %109 ]
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %8, align 4
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %118 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %117, i32 0, i32 0
  %119 = load i32 (%struct.flexcop_device*, i32, i64, i32)*, i32 (%struct.flexcop_device*, i32, i64, i32)** %118, align 8
  %120 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %121 = load i32, i32* @pid_n_reg_314, align 4
  %122 = bitcast { i64, i32 }* %16 to i8*
  %123 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 12, i1 false)
  %124 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %125 = load i64, i64* %124, align 4
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 %119(%struct.flexcop_device* %120, i32 %121, i64 %125, i32 %127)
  br label %129

129:                                              ; preds = %110, %65, %60
  br label %130

130:                                              ; preds = %19, %129, %55, %50, %45, %40, %35, %30
  ret void
}

declare dso_local i32 @deb_ts(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @flexcop_pid_Stream1_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_Stream2_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_PCR_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_PMT_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_EMM_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_ECM_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
