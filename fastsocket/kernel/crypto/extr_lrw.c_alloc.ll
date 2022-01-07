; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.rtattr = type { i32 }
%struct.crypto_alg = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32 }

@CRYPTO_ALG_TYPE_BLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_CIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lrw\00", align 1
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
  br label %149

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
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %27 = bitcast %struct.crypto_alg* %26 to %struct.crypto_instance*
  %28 = call %struct.crypto_instance* @ERR_CAST(%struct.crypto_instance* %27)
  store %struct.crypto_instance* %28, %struct.crypto_instance** %2, align 8
  br label %149

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
  br label %144

37:                                               ; preds = %29
  %38 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %39 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %40 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 8
  store i32 %38, i32* %41, align 4
  %42 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %43 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %46 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 7
  store i32 %44, i32* %47, align 8
  %48 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %49 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %52 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %55 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 7
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %60 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 7, i32* %61, align 4
  br label %69

62:                                               ; preds = %37
  %63 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %64 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %67 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %58
  %70 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %71 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 6
  store i32* @crypto_blkcipher_type, i32** %72, align 8
  %73 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %74 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = srem i32 %75, 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %69
  %79 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %80 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, 3
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %69
  %85 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %86 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %89 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  %92 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %93 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %97 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %95, %99
  %101 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %102 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 5
  store i64 %100, i64* %104, align 8
  %105 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %106 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %110 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %108, %112
  %114 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %115 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  store i64 %113, i64* %117, align 8
  %118 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %119 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  store i32 4, i32* %120, align 8
  %121 = load i32, i32* @init_tfm, align 4
  %122 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %123 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @exit_tfm, align 4
  %126 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %127 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 4
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* @setkey, align 4
  %130 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %131 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* @encrypt, align 4
  %135 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %136 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  store i32 %134, i32* %138, align 8
  %139 = load i32, i32* @decrypt, align 4
  %140 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %141 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %84, %36
  %145 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %146 = bitcast %struct.crypto_alg* %145 to %struct.crypto_instance*
  %147 = call i32 @crypto_mod_put(%struct.crypto_instance* %146)
  %148 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  store %struct.crypto_instance* %148, %struct.crypto_instance** %2, align 8
  br label %149

149:                                              ; preds = %144, %25, %12
  %150 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  ret %struct.crypto_instance* %150
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
