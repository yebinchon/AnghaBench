; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_handle_regs_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_handle_regs_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.zd_usb* }
%struct.zd_usb = type { %struct.zd_usb_interrupt }
%struct.zd_usb_interrupt = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }
%struct.zd_mac = type { i32, i32, i32 }

@CR_INTERRUPT = common dso_local global i64 0, align 8
@USB_MAX_EP_INT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @handle_regs_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_regs_int(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.zd_usb*, align 8
  %4 = alloca %struct.zd_usb_interrupt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.zd_mac*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 2
  %10 = load %struct.zd_usb*, %struct.zd_usb** %9, align 8
  store %struct.zd_usb* %10, %struct.zd_usb** %3, align 8
  %11 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %12 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %11, i32 0, i32 0
  store %struct.zd_usb_interrupt* %12, %struct.zd_usb_interrupt** %4, align 8
  %13 = call i32 (...) @in_interrupt()
  %14 = call i32 @ZD_ASSERT(i32 %13)
  %15 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %16 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le16_to_cpu(i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @CR_INTERRUPT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %1
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  %32 = load %struct.zd_usb*, %struct.zd_usb** %31, align 8
  %33 = call i32 @zd_usb_to_hw(%struct.zd_usb* %32)
  %34 = call %struct.zd_mac* @zd_hw_mac(i32 %33)
  store %struct.zd_mac* %34, %struct.zd_mac** %7, align 8
  %35 = load %struct.zd_mac*, %struct.zd_mac** %7, align 8
  %36 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.zd_mac*, %struct.zd_mac** %7, align 8
  %39 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %38, i32 0, i32 2
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @USB_MAX_EP_INT_BUFFER, align 4
  %44 = call i32 @memcpy(i32* %39, i32 %42, i32 %43)
  %45 = load %struct.zd_mac*, %struct.zd_mac** %7, align 8
  %46 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.zd_mac*, %struct.zd_mac** %7, align 8
  %49 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %48, i32 0, i32 0
  %50 = call i32 @schedule_work(i32* %49)
  br label %103

51:                                               ; preds = %1
  %52 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %53 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %52, i32 0, i32 0
  %54 = call i64 @atomic_read(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %51
  %57 = load %struct.urb*, %struct.urb** %2, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %5, align 4
  %60 = load %struct.urb*, %struct.urb** %2, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %64 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %67, 8
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  store i32 8, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %56
  %71 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %72 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.urb*, %struct.urb** %2, align 8
  %76 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @memcpy(i32* %74, i32 %77, i32 %78)
  %80 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %81 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %82 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %86 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @check_read_regs(%struct.zd_usb* %80, i32 %84, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %70
  br label %104

92:                                               ; preds = %70
  %93 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %94 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %93, i32 0, i32 0
  %95 = call i32 @atomic_set(i32* %94, i32 0)
  %96 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %97 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %99 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = call i32 @complete(i32* %100)
  br label %104

102:                                              ; preds = %51
  br label %103

103:                                              ; preds = %102, %29
  br label %104

104:                                              ; preds = %103, %92, %91
  %105 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %106 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %105, i32 0, i32 1
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @CR_INTERRUPT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %113 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %112, i32 0, i32 0
  %114 = call i64 @atomic_read(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.urb*, %struct.urb** %2, align 8
  %118 = call i32 @handle_regs_int_override(%struct.urb* %117)
  br label %119

119:                                              ; preds = %116, %111, %104
  ret void
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.zd_mac* @zd_hw_mac(i32) #1

declare dso_local i32 @zd_usb_to_hw(%struct.zd_usb*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @check_read_regs(%struct.zd_usb*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @handle_regs_int_override(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
