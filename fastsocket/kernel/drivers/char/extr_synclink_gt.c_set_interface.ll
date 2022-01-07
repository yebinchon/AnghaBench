; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_set_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_set_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s set_interface=%x)\0A\00", align 1
@TCR = common dso_local global i32 0, align 4
@MGSL_INTERFACE_RTS_EN = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*, i32)* @set_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_interface(%struct.slgt_info* %0, i32 %1) #0 {
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %8 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @DBGINFO(i8* %12)
  %14 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %15 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %22 = call i32 @msc_set_vcr(%struct.slgt_info* %21)
  %23 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %24 = load i32, i32* @TCR, align 4
  %25 = call zeroext i16 @rd_reg16(%struct.slgt_info* %23, i32 %24)
  store i16 %25, i16* %6, align 2
  %26 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MGSL_INTERFACE_RTS_EN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i16, i16* @BIT7, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %6, align 2
  br label %47

39:                                               ; preds = %2
  %40 = load i16, i16* @BIT7, align 2
  %41 = zext i16 %40 to i32
  %42 = xor i32 %41, -1
  %43 = load i16, i16* %6, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, %42
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %6, align 2
  br label %47

47:                                               ; preds = %39, %32
  %48 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %49 = load i32, i32* @TCR, align 4
  %50 = load i16, i16* %6, align 2
  %51 = call i32 @wr_reg16(%struct.slgt_info* %48, i32 %49, i16 zeroext %50)
  %52 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %53 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %52, i32 0, i32 1
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  ret i32 0
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @msc_set_vcr(%struct.slgt_info*) #1

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
