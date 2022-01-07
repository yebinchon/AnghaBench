; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_larval_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_larval_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32, i32 }
%struct.crypto_larval = type { %struct.crypto_alg }

@crypto_alg_sem = common dso_local global i32 0, align 4
@crypto_alg_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_alg* (i8*, i32, i32)* @crypto_larval_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_alg* @crypto_larval_add(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_alg*, align 8
  %9 = alloca %struct.crypto_larval*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.crypto_larval* @crypto_larval_alloc(i8* %10, i32 %11, i32 %12)
  store %struct.crypto_larval* %13, %struct.crypto_larval** %9, align 8
  %14 = load %struct.crypto_larval*, %struct.crypto_larval** %9, align 8
  %15 = call i64 @IS_ERR(%struct.crypto_larval* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.crypto_larval*, %struct.crypto_larval** %9, align 8
  %19 = call %struct.crypto_alg* @ERR_CAST(%struct.crypto_larval* %18)
  store %struct.crypto_alg* %19, %struct.crypto_alg** %4, align 8
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.crypto_larval*, %struct.crypto_larval** %9, align 8
  %22 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %22, i32 0, i32 1
  %24 = call i32 @atomic_set(i32* %23, i32 2)
  %25 = call i32 @down_write(i32* @crypto_alg_sem)
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.crypto_alg* @__crypto_alg_lookup(i8* %26, i32 %27, i32 %28)
  store %struct.crypto_alg* %29, %struct.crypto_alg** %8, align 8
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %31 = icmp ne %struct.crypto_alg* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %20
  %33 = load %struct.crypto_larval*, %struct.crypto_larval** %9, align 8
  %34 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %33, i32 0, i32 0
  store %struct.crypto_alg* %34, %struct.crypto_alg** %8, align 8
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %36 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %35, i32 0, i32 0
  %37 = call i32 @list_add(i32* %36, i32* @crypto_alg_list)
  br label %38

38:                                               ; preds = %32, %20
  %39 = call i32 @up_write(i32* @crypto_alg_sem)
  %40 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %41 = load %struct.crypto_larval*, %struct.crypto_larval** %9, align 8
  %42 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %41, i32 0, i32 0
  %43 = icmp ne %struct.crypto_alg* %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.crypto_larval*, %struct.crypto_larval** %9, align 8
  %46 = call i32 @kfree(%struct.crypto_larval* %45)
  %47 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %48 = call i64 @crypto_is_larval(%struct.crypto_alg* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %52 = call %struct.crypto_alg* @crypto_larval_wait(%struct.crypto_alg* %51)
  store %struct.crypto_alg* %52, %struct.crypto_alg** %8, align 8
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %55, %struct.crypto_alg** %4, align 8
  br label %56

56:                                               ; preds = %54, %17
  %57 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  ret %struct.crypto_alg* %57
}

declare dso_local %struct.crypto_larval* @crypto_larval_alloc(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_larval*) #1

declare dso_local %struct.crypto_alg* @ERR_CAST(%struct.crypto_larval*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.crypto_alg* @__crypto_alg_lookup(i8*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.crypto_larval*) #1

declare dso_local i64 @crypto_is_larval(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @crypto_larval_wait(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
