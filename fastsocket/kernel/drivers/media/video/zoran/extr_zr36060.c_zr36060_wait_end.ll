; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36060.c_zr36060_wait_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36060.c_zr36060_wait_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zr36060 = type { i32, i32 }

@ZR060_CFSR_Busy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: timeout at wait_end (last status: 0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zr36060*)* @zr36060_wait_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zr36060_wait_end(%struct.zr36060* %0) #0 {
  %2 = alloca %struct.zr36060*, align 8
  %3 = alloca i32, align 4
  store %struct.zr36060* %0, %struct.zr36060** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load %struct.zr36060*, %struct.zr36060** %2, align 8
  %6 = call i32 @zr36060_read_status(%struct.zr36060* %5)
  %7 = load i32, i32* @ZR060_CFSR_Busy, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = call i32 @udelay(i32 1)
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = icmp sgt i32 %12, 200000
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.zr36060*, %struct.zr36060** %2, align 8
  %17 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.zr36060*, %struct.zr36060** %2, align 8
  %20 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  br label %24

23:                                               ; preds = %10
  br label %4

24:                                               ; preds = %15, %4
  ret void
}

declare dso_local i32 @zr36060_read_status(%struct.zr36060*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
