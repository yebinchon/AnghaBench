; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c___crypto_alloc_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c___crypto_alloc_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32, %struct.crypto_alg* }
%struct.crypto_alg = type { i32 (%struct.crypto_tfm*)* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_alg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_tfm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crypto_alg* %0, %struct.crypto_alg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.crypto_tfm* null, %struct.crypto_tfm** %7, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @crypto_ctxsize(%struct.crypto_alg* %12, i32 %13, i32 %14)
  %16 = sext i32 %15 to i64
  %17 = add i64 16, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.crypto_tfm* @kzalloc(i32 %19, i32 %20)
  store %struct.crypto_tfm* %21, %struct.crypto_tfm** %7, align 8
  %22 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %23 = icmp eq %struct.crypto_tfm* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %69

25:                                               ; preds = %3
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %27 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %28 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %27, i32 0, i32 1
  store %struct.crypto_alg* %26, %struct.crypto_alg** %28, align 8
  %29 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @crypto_init_ops(%struct.crypto_tfm* %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %58

36:                                               ; preds = %25
  %37 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %38 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %43 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %42, i32 0, i32 0
  %44 = load i32 (%struct.crypto_tfm*)*, i32 (%struct.crypto_tfm*)** %43, align 8
  %45 = icmp ne i32 (%struct.crypto_tfm*)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %48 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %47, i32 0, i32 0
  %49 = load i32 (%struct.crypto_tfm*)*, i32 (%struct.crypto_tfm*)** %48, align 8
  %50 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %51 = call i32 %49(%struct.crypto_tfm* %50)
  store i32 %51, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %55

54:                                               ; preds = %46, %41, %36
  br label %72

55:                                               ; preds = %53
  %56 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %57 = call i32 @crypto_exit_ops(%struct.crypto_tfm* %56)
  br label %58

58:                                               ; preds = %55, %35
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %65 = call i32 @crypto_shoot_alg(%struct.crypto_alg* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %68 = call i32 @kfree(%struct.crypto_tfm* %67)
  br label %69

69:                                               ; preds = %66, %24
  %70 = load i32, i32* %9, align 4
  %71 = call %struct.crypto_tfm* @ERR_PTR(i32 %70)
  store %struct.crypto_tfm* %71, %struct.crypto_tfm** %7, align 8
  br label %72

72:                                               ; preds = %69, %54
  %73 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  ret %struct.crypto_tfm* %73
}

declare dso_local i32 @crypto_ctxsize(%struct.crypto_alg*, i32, i32) #1

declare dso_local %struct.crypto_tfm* @kzalloc(i32, i32) #1

declare dso_local i32 @crypto_init_ops(%struct.crypto_tfm*, i32, i32) #1

declare dso_local i32 @crypto_exit_ops(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_shoot_alg(%struct.crypto_alg*) #1

declare dso_local i32 @kfree(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_tfm* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
