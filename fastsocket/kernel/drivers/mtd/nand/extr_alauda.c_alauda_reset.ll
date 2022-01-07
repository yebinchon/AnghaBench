; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alauda = type { i32, i32, i32, i32 }

@ALAUDA_BULK_CMD = common dso_local global i32 0, align 4
@ALAUDA_BULK_RESET_MEDIA = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alauda*)* @alauda_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alauda_reset(%struct.alauda* %0) #0 {
  %2 = alloca %struct.alauda*, align 8
  %3 = alloca [9 x i32], align 16
  store %struct.alauda* %0, %struct.alauda** %2, align 8
  %4 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @ALAUDA_BULK_CMD, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  %7 = load i32, i32* @ALAUDA_BULK_RESET_MEDIA, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load %struct.alauda*, %struct.alauda** %2, align 8
  %16 = getelementptr inbounds %struct.alauda, %struct.alauda* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.alauda*, %struct.alauda** %2, align 8
  %19 = getelementptr inbounds %struct.alauda, %struct.alauda* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.alauda*, %struct.alauda** %2, align 8
  %22 = getelementptr inbounds %struct.alauda, %struct.alauda* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.alauda*, %struct.alauda** %2, align 8
  %25 = getelementptr inbounds %struct.alauda, %struct.alauda* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %28 = load i32, i32* @HZ, align 4
  %29 = call i32 @usb_bulk_msg(i32 %23, i32 %26, i32* %27, i32 9, i32* null, i32 %28)
  %30 = load %struct.alauda*, %struct.alauda** %2, align 8
  %31 = getelementptr inbounds %struct.alauda, %struct.alauda* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
