; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_mca_32.c_mca_pc_write_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_mca_32.c_mca_pc_write_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_device = type { i32, i8* }

@mca_lock = common dso_local global i32 0, align 4
@MCA_MOTHERBOARD_SETUP_REG = common dso_local global i32 0, align 4
@MCA_ADAPTER_SETUP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mca_device*, i32, i8)* @mca_pc_write_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_pc_write_pos(%struct.mca_device* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.mca_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.mca_device* %0, %struct.mca_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %42

14:                                               ; preds = %10
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @mca_lock, i64 %15)
  %17 = load i32, i32* @MCA_MOTHERBOARD_SETUP_REG, align 4
  %18 = call i32 @outb_p(i8 zeroext -1, i32 %17)
  %19 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %20 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 15
  %23 = or i32 8, %22
  %24 = trunc i32 %23 to i8
  %25 = load i32, i32* @MCA_ADAPTER_SETUP_REG, align 4
  %26 = call i32 @outb_p(i8 zeroext %24, i32 %25)
  %27 = load i8, i8* %6, align 1
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @MCA_POS_REG(i32 %28)
  %30 = call i32 @outb_p(i8 zeroext %27, i32 %29)
  %31 = load i32, i32* @MCA_ADAPTER_SETUP_REG, align 4
  %32 = call i32 @outb_p(i8 zeroext 0, i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @mca_lock, i64 %33)
  %35 = load i8, i8* %6, align 1
  %36 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %37 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 %35, i8* %41, align 1
  br label %42

42:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i8 zeroext, i32) #1

declare dso_local i32 @MCA_POS_REG(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
