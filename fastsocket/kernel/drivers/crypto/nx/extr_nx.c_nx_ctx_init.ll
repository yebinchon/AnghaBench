; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_ctx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx_crypto_ctx = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_5__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NX_CSB_VALID_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nx_ctx_init(%struct.nx_crypto_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.nx_crypto_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.nx_crypto_ctx* %0, %struct.nx_crypto_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @memset(i32 %7, i32 0, i32 %10)
  %12 = load i32, i32* @NX_CSB_VALID_BIT, align 4
  %13 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %13, i32 0, i32 5
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %12
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %24, i32 0, i32 5
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i8* @virt_to_abs(%struct.TYPE_8__* %26)
  %28 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i8* %27, i8** %30, align 8
  %31 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i8* @virt_to_abs(%struct.TYPE_8__* %33)
  %35 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i8* %34, i8** %37, align 8
  %38 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i8* @virt_to_abs(%struct.TYPE_8__* %40)
  %42 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %83

49:                                               ; preds = %2
  %50 = load i32, i32* @NX_CSB_VALID_BIT, align 4
  %51 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %51, i32 0, i32 3
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %50
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = call i8* @virt_to_abs(%struct.TYPE_8__* %64)
  %66 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  store i8* %65, i8** %68, align 8
  %69 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = call i8* @virt_to_abs(%struct.TYPE_8__* %71)
  %73 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = call i8* @virt_to_abs(%struct.TYPE_8__* %78)
  %80 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  br label %83

83:                                               ; preds = %49, %2
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @virt_to_abs(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
