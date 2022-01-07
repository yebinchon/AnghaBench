; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xcbc.c_xcbc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xcbc.c_xcbc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.shash_instance = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i8*, i32 }
%struct.crypto_alg = type { i32, i32, %struct.TYPE_4__, i32 }

@CRYPTO_ALG_TYPE_SHASH = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_CIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xcbc\00", align 1
@xcbc_init_tfm = common dso_local global i32 0, align 4
@xcbc_exit_tfm = common dso_local global i32 0, align 4
@crypto_xcbc_digest_init = common dso_local global i32 0, align 4
@crypto_xcbc_digest_update = common dso_local global i32 0, align 4
@crypto_xcbc_digest_final = common dso_local global i32 0, align 4
@crypto_xcbc_digest_setkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @xcbc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcbc_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca %struct.shash_instance*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  %10 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %11 = load i32, i32* @CRYPTO_ALG_TYPE_SHASH, align 4
  %12 = call i32 @crypto_check_attr_type(%struct.rtattr** %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %164

17:                                               ; preds = %2
  %18 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %19 = load i32, i32* @CRYPTO_ALG_TYPE_CIPHER, align 4
  %20 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %21 = call %struct.shash_instance* @crypto_get_attr_alg(%struct.rtattr** %18, i32 %19, i32 %20)
  %22 = bitcast %struct.shash_instance* %21 to %struct.crypto_alg*
  store %struct.crypto_alg* %22, %struct.crypto_alg** %7, align 8
  %23 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %24 = bitcast %struct.crypto_alg* %23 to %struct.shash_instance*
  %25 = call i64 @IS_ERR(%struct.shash_instance* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %29 = bitcast %struct.crypto_alg* %28 to %struct.shash_instance*
  %30 = call i32 @PTR_ERR(%struct.shash_instance* %29)
  store i32 %30, i32* %3, align 4
  br label %164

31:                                               ; preds = %17
  %32 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %33 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %36 [
    i32 16, label %35
  ]

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31
  br label %159

37:                                               ; preds = %35
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %39 = bitcast %struct.crypto_alg* %38 to %struct.shash_instance*
  %40 = call %struct.shash_instance* @shash_alloc_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.shash_instance* %39)
  store %struct.shash_instance* %40, %struct.shash_instance** %6, align 8
  %41 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %42 = call i32 @PTR_ERR(%struct.shash_instance* %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %44 = call i64 @IS_ERR(%struct.shash_instance* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %159

47:                                               ; preds = %37
  %48 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %49 = call i32 @shash_instance_ctx(%struct.shash_instance* %48)
  %50 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %51 = bitcast %struct.crypto_alg* %50 to %struct.shash_instance*
  %52 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %53 = call i32 @shash_crypto_instance(%struct.shash_instance* %52)
  %54 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %55 = call i32 @crypto_init_spawn(i32 %49, %struct.shash_instance* %51, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %154

59:                                               ; preds = %47
  %60 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %61 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, 3
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %67 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i64 %65, i64* %69, align 8
  %70 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %71 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %74 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  store i32 %72, i32* %76, align 8
  %77 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %78 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %81 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 8
  %84 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %85 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %88 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = call i32 (...) @crypto_tfm_ctx_alignment()
  %91 = sext i32 %90 to i64
  %92 = call i8* @ALIGN(i32 4, i64 %91)
  %93 = load i64, i64* %8, align 8
  %94 = call i32 (...) @crypto_tfm_ctx_alignment()
  %95 = sub nsw i32 %94, 1
  %96 = xor i32 %95, -1
  %97 = sext i32 %96 to i64
  %98 = and i64 %93, %97
  %99 = getelementptr i8, i8* %92, i64 %98
  %100 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %101 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr i8, i8* %99, i64 %104
  %106 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %107 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  store i8* %105, i8** %108, align 8
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %109, 1
  %111 = call i8* @ALIGN(i32 4, i64 %110)
  %112 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %113 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr i8, i8* %111, i64 %116
  %118 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %119 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  store i8* %117, i8** %121, align 8
  %122 = load i32, i32* @xcbc_init_tfm, align 4
  %123 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %124 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  store i32 %122, i32* %126, align 8
  %127 = load i32, i32* @xcbc_exit_tfm, align 4
  %128 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %129 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @crypto_xcbc_digest_init, align 4
  %133 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %134 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  store i32 %132, i32* %135, align 8
  %136 = load i32, i32* @crypto_xcbc_digest_update, align 4
  %137 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %138 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @crypto_xcbc_digest_final, align 4
  %141 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %142 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* @crypto_xcbc_digest_setkey, align 4
  %145 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %146 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %149 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %150 = call i32 @shash_register_instance(%struct.crypto_template* %148, %struct.shash_instance* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %59
  br label %154

154:                                              ; preds = %153, %58
  %155 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %156 = call i32 @shash_crypto_instance(%struct.shash_instance* %155)
  %157 = call i32 @shash_free_instance(i32 %156)
  br label %158

158:                                              ; preds = %154, %59
  br label %159

159:                                              ; preds = %158, %46, %36
  %160 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %161 = bitcast %struct.crypto_alg* %160 to %struct.shash_instance*
  %162 = call i32 @crypto_mod_put(%struct.shash_instance* %161)
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %159, %27, %15
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @crypto_check_attr_type(%struct.rtattr**, i32) #1

declare dso_local %struct.shash_instance* @crypto_get_attr_alg(%struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.shash_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.shash_instance*) #1

declare dso_local %struct.shash_instance* @shash_alloc_instance(i8*, %struct.shash_instance*) #1

declare dso_local i32 @crypto_init_spawn(i32, %struct.shash_instance*, i32, i32) #1

declare dso_local i32 @shash_instance_ctx(%struct.shash_instance*) #1

declare dso_local i32 @shash_crypto_instance(%struct.shash_instance*) #1

declare dso_local i8* @ALIGN(i32, i64) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @shash_register_instance(%struct.crypto_template*, %struct.shash_instance*) #1

declare dso_local i32 @shash_free_instance(i32) #1

declare dso_local i32 @crypto_mod_put(%struct.shash_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
