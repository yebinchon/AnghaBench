; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_emit_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_emit_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_features = type { i64, i32, i32, i32, i32 }

@PM_READ_ONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"skip_block_zeroing \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ignore_discard \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"no_discard_passdown \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"read_only \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"error_if_no_space \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_features*, i8*, i32, i32)* @emit_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_flags(%struct.pool_features* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pool_features*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pool_features* %0, %struct.pool_features** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pool_features*, %struct.pool_features** %5, align 8
  %11 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.pool_features*, %struct.pool_features** %5, align 8
  %17 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %15, %21
  %23 = load %struct.pool_features*, %struct.pool_features** %5, align 8
  %24 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = add nsw i32 %22, %28
  %30 = load %struct.pool_features*, %struct.pool_features** %5, align 8
  %31 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PM_READ_ONLY, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %29, %35
  %37 = load %struct.pool_features*, %struct.pool_features** %5, align 8
  %38 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.pool_features*, %struct.pool_features** %5, align 8
  %44 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %4
  %48 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %4
  %50 = load %struct.pool_features*, %struct.pool_features** %5, align 8
  %51 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load %struct.pool_features*, %struct.pool_features** %5, align 8
  %58 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = load %struct.pool_features*, %struct.pool_features** %5, align 8
  %65 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PM_READ_ONLY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %63
  %72 = load %struct.pool_features*, %struct.pool_features** %5, align 8
  %73 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  ret void
}

declare dso_local i32 @DMEMIT(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
