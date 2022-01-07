; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_dump_c_ind_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_dump_c_ind_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@dump_c_ind_mask.hex_digit_table = internal global [16 x i8] c"0123456789abcdef", align 16
@C_IND_MASK_DWORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"c_ind_mask =%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @dump_c_ind_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_c_ind_mask(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [40 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %78, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @C_IND_MASK_DWORDS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %81

13:                                               ; preds = %9
  %14 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %15 = getelementptr inbounds i8, i8* %14, i64 36
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  store i8 0, i8* %16, align 1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %71, %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %74

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @C_IND_MASK_DWORDS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %49, %26
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 15
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* @dump_c_ind_mask.hex_digit_table, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %7, align 8
  store i8 %44, i8* %46, align 1
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %36

52:                                               ; preds = %36
  br label %68

53:                                               ; preds = %20
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %63, %56
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %7, align 8
  store i8 32, i8* %62, align 1
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %57

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %53
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %7, align 8
  store i8 32, i8* %70, align 1
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %17

74:                                               ; preds = %17
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = call i32 @dbug(i32 1, i32 %76)
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 4
  store i32 %80, i32* %3, align 4
  br label %9

81:                                               ; preds = %9
  ret void
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
