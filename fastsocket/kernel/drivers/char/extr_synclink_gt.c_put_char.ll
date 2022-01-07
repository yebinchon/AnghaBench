; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_put_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.slgt_info* }
%struct.slgt_info = type { i8*, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"put_char\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s put_char(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.slgt_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  store %struct.slgt_info* %11, %struct.slgt_info** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @sanity_check(%struct.slgt_info* %12, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @DBGINFO(i8* %25)
  %27 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %28 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %65

32:                                               ; preds = %19
  %33 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %34 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %33, i32 0, i32 3
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %38 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %32
  %42 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %43 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load i8, i8* %5, align 1
  %51 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %55 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %50, i8* %58, align 1
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %49, %41, %32
  %60 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %61 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %60, i32 0, i32 3
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %31, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
