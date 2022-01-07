; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xts.c_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xts.c_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rtattr = type { i32 }
%struct.crypto_alg = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, i32, i32 }

@CRYPTO_ALG_TYPE_BLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_CIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"xts\00", align 1
@crypto_blkcipher_type = common dso_local global i32 0, align 4
@init_tfm = common dso_local global i32 0, align 4
@exit_tfm = common dso_local global i32 0, align 4
@setkey = common dso_local global i32 0, align 4
@encrypt = common dso_local global i32 0, align 4
@decrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_instance* (%struct.rtattr**)* @alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_instance* @alloc(%struct.rtattr** %0) #0 {
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
  br label %130

15:                                               ; preds = %1
  %16 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %17 = load i32, i32* @CRYPTO_ALG_TYPE_CIPHER, align 4
  %18 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %19 = call %struct.crypto_instance* @crypto_get_attr_alg(%struct.rtattr** %16, i32 %17, i32 %18)
  %20 = bitcast %struct.crypto_instance* %19 to %struct.crypto_alg*
  store %struct.crypto_alg* %20, %struct.crypto_alg** %5, align 8
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %22 = bitcast %struct.crypto_alg* %21 to %struct.crypto_instance*
  %23 = call i64 @IS_ERR(%struct.crypto_instance* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %27 = bitcast %struct.crypto_alg* %26 to %struct.crypto_instance*
  %28 = call i32 @PTR_ERR(%struct.crypto_instance* %27)
  %29 = call %struct.crypto_instance* @ERR_PTR(i32 %28)
  store %struct.crypto_instance* %29, %struct.crypto_instance** %2, align 8
  br label %130

30:                                               ; preds = %15
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %32 = bitcast %struct.crypto_alg* %31 to %struct.crypto_instance*
  %33 = call %struct.crypto_instance* @crypto_alloc_instance(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.crypto_instance* %32)
  store %struct.crypto_instance* %33, %struct.crypto_instance** %4, align 8
  %34 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %35 = call i64 @IS_ERR(%struct.crypto_instance* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %125

38:                                               ; preds = %30
  %39 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %40 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %41 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 8
  store i32 %39, i32* %42, align 8
  %43 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %44 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %47 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 7
  store i32 %45, i32* %48, align 4
  %49 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %50 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %53 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 6
  store i32 %51, i32* %54, align 8
  %55 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %56 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %57, 7
  br i1 %58, label %59, label %63

59:                                               ; preds = %38
  %60 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %61 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 7, i32* %62, align 8
  br label %70

63:                                               ; preds = %38
  %64 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %65 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %68 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %63, %59
  %71 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %72 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  store i32* @crypto_blkcipher_type, i32** %73, align 8
  %74 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %75 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %78 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 5
  store i32 %76, i32* %80, align 4
  %81 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %82 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 2, %84
  %86 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %87 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %91 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 2, %93
  %95 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %96 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  %99 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %100 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 4, i32* %101, align 4
  %102 = load i32, i32* @init_tfm, align 4
  %103 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %104 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* @exit_tfm, align 4
  %107 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %108 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* @setkey, align 4
  %111 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %112 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  store i32 %110, i32* %114, align 8
  %115 = load i32, i32* @encrypt, align 4
  %116 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %117 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* @decrypt, align 4
  %121 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %122 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 %120, i32* %124, align 8
  br label %125

125:                                              ; preds = %70, %37
  %126 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %127 = bitcast %struct.crypto_alg* %126 to %struct.crypto_instance*
  %128 = call i32 @crypto_mod_put(%struct.crypto_instance* %127)
  %129 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  store %struct.crypto_instance* %129, %struct.crypto_instance** %2, align 8
  br label %130

130:                                              ; preds = %125, %25, %12
  %131 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  ret %struct.crypto_instance* %131
}

declare dso_local i32 @crypto_check_attr_type(%struct.rtattr**, i32) #1

declare dso_local %struct.crypto_instance* @ERR_PTR(i32) #1

declare dso_local %struct.crypto_instance* @crypto_get_attr_alg(%struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_instance* @crypto_alloc_instance(i8*, %struct.crypto_instance*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
