; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_mca_32.c_mca_pc_read_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_mca_32.c_mca_pc_read_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_device = type { i32, i32, i8* }

@mca_lock = common dso_local global i32 0, align 4
@MCA_ADAPTER_SETUP_REG = common dso_local global i32 0, align 4
@MCA_MOTHERBOARD_SETUP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mca_device*, i32)* @mca_pc_read_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mca_pc_read_pos(%struct.mca_device* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.mca_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.mca_device* %0, %struct.mca_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i8 0, i8* %3, align 1
  br label %60

14:                                               ; preds = %10
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @mca_lock, i64 %15)
  %17 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %18 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load i32, i32* @MCA_ADAPTER_SETUP_REG, align 4
  %23 = call i32 @outb_p(i32 0, i32 %22)
  %24 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %25 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MCA_MOTHERBOARD_SETUP_REG, align 4
  %28 = call i32 @outb_p(i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @MCA_POS_REG(i32 %29)
  %31 = call zeroext i8 @inb_p(i32 %30)
  store i8 %31, i8* %6, align 1
  %32 = load i32, i32* @MCA_MOTHERBOARD_SETUP_REG, align 4
  %33 = call i32 @outb_p(i32 255, i32 %32)
  br label %49

34:                                               ; preds = %14
  %35 = load i32, i32* @MCA_MOTHERBOARD_SETUP_REG, align 4
  %36 = call i32 @outb_p(i32 255, i32 %35)
  %37 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %38 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 15
  %41 = or i32 8, %40
  %42 = load i32, i32* @MCA_ADAPTER_SETUP_REG, align 4
  %43 = call i32 @outb_p(i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @MCA_POS_REG(i32 %44)
  %46 = call zeroext i8 @inb_p(i32 %45)
  store i8 %46, i8* %6, align 1
  %47 = load i32, i32* @MCA_ADAPTER_SETUP_REG, align 4
  %48 = call i32 @outb_p(i32 0, i32 %47)
  br label %49

49:                                               ; preds = %34, %21
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @mca_lock, i64 %50)
  %52 = load i8, i8* %6, align 1
  %53 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %54 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 %52, i8* %58, align 1
  %59 = load i8, i8* %6, align 1
  store i8 %59, i8* %3, align 1
  br label %60

60:                                               ; preds = %49, %13
  %61 = load i8, i8* %3, align 1
  ret i8 %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local zeroext i8 @inb_p(i32) #1

declare dso_local i32 @MCA_POS_REG(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
