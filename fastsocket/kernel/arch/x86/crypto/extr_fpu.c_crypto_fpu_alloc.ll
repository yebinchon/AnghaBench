; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_fpu.c_crypto_fpu_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_fpu.c_crypto_fpu_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.rtattr = type { i32 }
%struct.crypto_alg = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32, i32, i32 }

@CRYPTO_ALG_TYPE_BLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fpu\00", align 1
@crypto_fpu_init_tfm = common dso_local global i32 0, align 4
@crypto_fpu_exit_tfm = common dso_local global i32 0, align 4
@crypto_fpu_setkey = common dso_local global i32 0, align 4
@crypto_fpu_encrypt = common dso_local global i32 0, align 4
@crypto_fpu_decrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_instance* (%struct.rtattr**)* @crypto_fpu_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_instance* @crypto_fpu_alloc(%struct.rtattr** %0) #0 {
  %2 = alloca %struct.crypto_instance*, align 8
  %3 = alloca %struct.rtattr**, align 8
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca i32, align 4
  store %struct.rtattr** %0, %struct.rtattr*** %3, align 8
  %7 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %8 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %9 = call i32 @crypto_check_attr_type(%struct.rtattr** %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.crypto_instance* @ERR_PTR(i32 %13)
  store %struct.crypto_instance* %14, %struct.crypto_instance** %2, align 8
  br label %123

15:                                               ; preds = %1
  %16 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %17 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %18 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %19 = call %struct.crypto_instance* @crypto_get_attr_alg(%struct.rtattr** %16, i32 %17, i32 %18)
  %20 = bitcast %struct.crypto_instance* %19 to %struct.crypto_alg*
  store %struct.crypto_alg* %20, %struct.crypto_alg** %5, align 8
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %22 = bitcast %struct.crypto_alg* %21 to %struct.crypto_instance*
  %23 = call i64 @IS_ERR(%struct.crypto_instance* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %27 = bitcast %struct.crypto_alg* %26 to %struct.crypto_instance*
  %28 = call %struct.crypto_instance* @ERR_CAST(%struct.crypto_instance* %27)
  store %struct.crypto_instance* %28, %struct.crypto_instance** %2, align 8
  br label %123

29:                                               ; preds = %15
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %31 = bitcast %struct.crypto_alg* %30 to %struct.crypto_instance*
  %32 = call %struct.crypto_instance* @crypto_alloc_instance(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.crypto_instance* %31)
  store %struct.crypto_instance* %32, %struct.crypto_instance** %4, align 8
  %33 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %34 = call i64 @IS_ERR(%struct.crypto_instance* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %118

37:                                               ; preds = %29
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %39 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %42 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 8
  store i32 %40, i32* %43, align 4
  %44 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %45 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %48 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 7
  store i32 %46, i32* %49, align 4
  %50 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %51 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %54 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 4
  %56 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %57 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %60 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %63 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %66 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  %68 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %69 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %73 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 5
  store i32 %71, i32* %75, align 4
  %76 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %77 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %81 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  store i32 %79, i32* %83, align 4
  %84 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %85 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %89 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  store i32 %87, i32* %91, align 4
  %92 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %93 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 4, i32* %94, align 4
  %95 = load i32, i32* @crypto_fpu_init_tfm, align 4
  %96 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %97 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @crypto_fpu_exit_tfm, align 4
  %100 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %101 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @crypto_fpu_setkey, align 4
  %104 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %105 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* @crypto_fpu_encrypt, align 4
  %109 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %110 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* @crypto_fpu_decrypt, align 4
  %114 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %115 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %37, %36
  %119 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %120 = bitcast %struct.crypto_alg* %119 to %struct.crypto_instance*
  %121 = call i32 @crypto_mod_put(%struct.crypto_instance* %120)
  %122 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  store %struct.crypto_instance* %122, %struct.crypto_instance** %2, align 8
  br label %123

123:                                              ; preds = %118, %25, %12
  %124 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  ret %struct.crypto_instance* %124
}

declare dso_local i32 @crypto_check_attr_type(%struct.rtattr**, i32) #1

declare dso_local %struct.crypto_instance* @ERR_PTR(i32) #1

declare dso_local %struct.crypto_instance* @crypto_get_attr_alg(%struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_instance* @ERR_CAST(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_instance* @crypto_alloc_instance(i8*, %struct.crypto_instance*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
