; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_dl_tasklet_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_dl_tasklet_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_seq_data }
%struct.asd_seq_data = type { i64, i32, i32, i32, i32, %struct.done_list_struct* }
%struct.done_list_struct = type { i32, i32 }
%struct.asd_ascb = type { i32 (%struct.asd_ascb*, %struct.done_list_struct*)*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DL_TOGGLE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BUG:sequencer:dl:no ascb?!\0A\00", align 1
@EMPTY_SCB = common dso_local global i64 0, align 8
@ASD_DL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @asd_dl_tasklet_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_dl_tasklet_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_seq_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.done_list_struct*, align 8
  %7 = alloca %struct.asd_ascb*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.asd_ha_struct*
  store %struct.asd_ha_struct* %9, %struct.asd_ha_struct** %3, align 8
  %10 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %11 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %10, i32 0, i32 0
  store %struct.asd_seq_data* %11, %struct.asd_seq_data** %4, align 8
  br label %12

12:                                               ; preds = %1, %121
  %13 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %14 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %13, i32 0, i32 5
  %15 = load %struct.done_list_struct*, %struct.done_list_struct** %14, align 8
  %16 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %17 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %15, i64 %18
  store %struct.done_list_struct* %19, %struct.done_list_struct** %6, align 8
  %20 = load %struct.done_list_struct*, %struct.done_list_struct** %6, align 8
  %21 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DL_TOGGLE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %26 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %12
  br label %122

30:                                               ; preds = %12
  %31 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %32 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %31, i32 0, i32 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %36 = load %struct.done_list_struct*, %struct.done_list_struct** %6, align 8
  %37 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le16_to_cpu(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = call %struct.asd_ascb* @asd_tc_index_find(%struct.asd_seq_data* %35, i32 %40)
  store %struct.asd_ascb* %41, %struct.asd_ascb** %7, align 8
  %42 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %43 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %42, i32 0, i32 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %47 = icmp ne %struct.asd_ascb* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %100

54:                                               ; preds = %30
  %55 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %56 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EMPTY_SCB, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %93

64:                                               ; preds = %54
  %65 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %66 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %71 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %70, i32 0, i32 2
  %72 = call i32 @del_timer(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %100

75:                                               ; preds = %69, %64
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %79 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %78, i32 0, i32 2
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %83 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %82, i32 0, i32 1
  %84 = call i32 @list_del_init(i32* %83)
  %85 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %86 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %90 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %89, i32 0, i32 2
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %77, %63
  %94 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %95 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %94, i32 0, i32 0
  %96 = load i32 (%struct.asd_ascb*, %struct.done_list_struct*)*, i32 (%struct.asd_ascb*, %struct.done_list_struct*)** %95, align 8
  %97 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %98 = load %struct.done_list_struct*, %struct.done_list_struct** %6, align 8
  %99 = call i32 %96(%struct.asd_ascb* %97, %struct.done_list_struct* %98)
  br label %100

100:                                              ; preds = %93, %74, %52
  %101 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %102 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  %105 = load i32, i32* @ASD_DL_SIZE, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = and i64 %104, %107
  %109 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %110 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %112 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %100
  %116 = load i32, i32* @DL_TOGGLE_MASK, align 4
  %117 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %118 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = xor i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115, %100
  br label %12

122:                                              ; preds = %29
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.asd_ascb* @asd_tc_index_find(%struct.asd_seq_data*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
