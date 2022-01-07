; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_set_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_set_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.slgt_info* }
%struct.slgt_info = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"set_break\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s set_break(%d)\0A\00", align 1
@TCR = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @set_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_break(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.slgt_info*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  store %struct.slgt_info* %11, %struct.slgt_info** %6, align 8
  %12 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @sanity_check(%struct.slgt_info* %12, i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %23 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @DBGINFO(i8* %27)
  %29 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %34 = load i32, i32* @TCR, align 4
  %35 = call zeroext i16 @rd_reg16(%struct.slgt_info* %33, i32 %34)
  store i16 %35, i16* %7, align 2
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %45

38:                                               ; preds = %21
  %39 = load i16, i16* @BIT6, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* %7, align 2
  %42 = zext i16 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %7, align 2
  br label %53

45:                                               ; preds = %21
  %46 = load i16, i16* @BIT6, align 2
  %47 = zext i16 %46 to i32
  %48 = xor i32 %47, -1
  %49 = load i16, i16* %7, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, %48
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %7, align 2
  br label %53

53:                                               ; preds = %45, %38
  %54 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %55 = load i32, i32* @TCR, align 4
  %56 = load i16, i16* %7, align 2
  %57 = call i32 @wr_reg16(%struct.slgt_info* %54, i32 %55, i16 zeroext %56)
  %58 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %59 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %58, i32 0, i32 0
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
