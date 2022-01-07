; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_fast_push_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_fast_push_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, i32, i32, i32, i32, i64, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32, i32, i32 }

@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"RX queue %d fast-filling descriptor ring from level %d to level %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"RX queue %d fast-filled descriptor ring to level %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_fast_push_rx_descriptors(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %8 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %9 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %8, i32 0, i32 6
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %12 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %15 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %20 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %19, i32 0, i32 6
  %21 = load %struct.efx_nic*, %struct.efx_nic** %20, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ugt i32 %18, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @EFX_BUG_ON_PARANOID(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %29 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp uge i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %131

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %36 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %48 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %55 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = mul i32 %53, %56
  store i32 %57, i32* %5, align 4
  %58 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %59 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sub i32 %60, %61
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ult i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @EFX_BUG_ON_PARANOID(i32 %66)
  %68 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %69 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %68, i32 0, i32 6
  %70 = load %struct.efx_nic*, %struct.efx_nic** %69, align 8
  %71 = load i32, i32* @rx_status, align 4
  %72 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %73 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %72, i32 0, i32 6
  %74 = load %struct.efx_nic*, %struct.efx_nic** %73, align 8
  %75 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %78 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %77)
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %82 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, i64, ...) @netif_vdbg(%struct.efx_nic* %70, i32 %71, i32 %76, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %78, i64 %80, i32 %83)
  br label %85

85:                                               ; preds = %104, %50
  %86 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %87 = call i32 @efx_init_rx_buffers(%struct.efx_rx_queue* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %93 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %96 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %101 = call i32 @efx_schedule_slow_fill(%struct.efx_rx_queue* %100)
  br label %102

102:                                              ; preds = %99, %91
  br label %131

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = sub i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp uge i32 %107, %108
  br i1 %109, label %85, label %110

110:                                              ; preds = %104
  %111 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %112 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %111, i32 0, i32 6
  %113 = load %struct.efx_nic*, %struct.efx_nic** %112, align 8
  %114 = load i32, i32* @rx_status, align 4
  %115 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %116 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %115, i32 0, i32 6
  %117 = load %struct.efx_nic*, %struct.efx_nic** %116, align 8
  %118 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %121 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %120)
  %122 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %123 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %126 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sub i32 %124, %127
  %129 = zext i32 %128 to i64
  %130 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, i64, ...) @netif_vdbg(%struct.efx_nic* %113, i32 %114, i32 %119, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %121, i64 %129)
  br label %131

131:                                              ; preds = %110, %102, %32
  %132 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %133 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %136 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = zext i32 %137 to i64
  %139 = icmp ne i64 %134, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %142 = call i32 @efx_nic_notify_rx_desc(%struct.efx_rx_queue* %141)
  br label %143

143:                                              ; preds = %140, %131
  ret void
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_vdbg(%struct.efx_nic*, i32, i32, i8*, i32, i64, ...) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @efx_init_rx_buffers(%struct.efx_rx_queue*) #1

declare dso_local i32 @efx_schedule_slow_fill(%struct.efx_rx_queue*) #1

declare dso_local i32 @efx_nic_notify_rx_desc(%struct.efx_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
