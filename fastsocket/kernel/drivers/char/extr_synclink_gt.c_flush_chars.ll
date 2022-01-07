; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_flush_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_flush_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i64, i32, %struct.slgt_info* }
%struct.slgt_info = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"flush_chars\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s flush_chars entry tx_count=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s flush_chars start transmit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @flush_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_chars(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 3
  %7 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  store %struct.slgt_info* %7, %struct.slgt_info** %3, align 8
  %8 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @sanity_check(%struct.slgt_info* %8, i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @DBGINFO(i8* %22)
  %24 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %25 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %15
  %29 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %40 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %33, %28, %15
  br label %80

44:                                               ; preds = %38
  %45 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @DBGINFO(i8* %49)
  %51 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 1
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %56 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %44
  %60 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %61 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %66 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %67 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %70 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @tx_load(%struct.slgt_info* %65, i32 %68, i64 %71)
  %73 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %74 = call i32 @tx_start(%struct.slgt_info* %73)
  br label %75

75:                                               ; preds = %64, %59, %44
  %76 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %77 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %76, i32 0, i32 1
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  br label %80

80:                                               ; preds = %75, %43, %14
  ret void
}

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tx_load(%struct.slgt_info*, i32, i64) #1

declare dso_local i32 @tx_start(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
