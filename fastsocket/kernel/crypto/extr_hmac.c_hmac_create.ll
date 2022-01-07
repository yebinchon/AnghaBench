; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hmac.c_hmac_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hmac.c_hmac_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.shash_instance = type { i32, i32, %struct.TYPE_4__, %struct.crypto_alg }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32 }
%struct.crypto_alg = type { i32, i64, i32 }
%struct.shash_alg = type { i32, i32, %struct.TYPE_4__, %struct.crypto_alg }

@CRYPTO_ALG_TYPE_SHASH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@hmac_init_tfm = common dso_local global i32 0, align 4
@hmac_exit_tfm = common dso_local global i32 0, align 4
@hmac_init = common dso_local global i32 0, align 4
@hmac_update = common dso_local global i32 0, align 4
@hmac_final = common dso_local global i32 0, align 4
@hmac_finup = common dso_local global i32 0, align 4
@hmac_export = common dso_local global i32 0, align 4
@hmac_import = common dso_local global i32 0, align 4
@hmac_setkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @hmac_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca %struct.shash_instance*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca %struct.shash_alg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  %12 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %13 = load i32, i32* @CRYPTO_ALG_TYPE_SHASH, align 4
  %14 = call i32 @crypto_check_attr_type(%struct.rtattr** %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %176

19:                                               ; preds = %2
  %20 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %21 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %20, i64 1
  %22 = load %struct.rtattr*, %struct.rtattr** %21, align 8
  %23 = call %struct.shash_instance* @shash_attr_alg(%struct.rtattr* %22, i32 0, i32 0)
  %24 = bitcast %struct.shash_instance* %23 to %struct.shash_alg*
  store %struct.shash_alg* %24, %struct.shash_alg** %8, align 8
  %25 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %26 = bitcast %struct.shash_alg* %25 to %struct.shash_instance*
  %27 = call i64 @IS_ERR(%struct.shash_instance* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %31 = bitcast %struct.shash_alg* %30 to %struct.shash_instance*
  %32 = call i32 @PTR_ERR(%struct.shash_instance* %31)
  store i32 %32, i32* %3, align 4
  br label %176

33:                                               ; preds = %19
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %37 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  %39 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %40 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %43 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %42, i32 0, i32 3
  store %struct.crypto_alg* %43, %struct.crypto_alg** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %46 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %52 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %33
  br label %172

56:                                               ; preds = %49
  %57 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %58 = call %struct.shash_instance* @shash_alloc_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.crypto_alg* %57)
  store %struct.shash_instance* %58, %struct.shash_instance** %6, align 8
  %59 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %60 = call i32 @PTR_ERR(%struct.shash_instance* %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %62 = call i64 @IS_ERR(%struct.shash_instance* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %172

65:                                               ; preds = %56
  %66 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %67 = call i32 @shash_instance_ctx(%struct.shash_instance* %66)
  %68 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %69 = bitcast %struct.shash_alg* %68 to %struct.shash_instance*
  %70 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %71 = call i32 @shash_crypto_instance(%struct.shash_instance* %70)
  %72 = call i32 @crypto_init_shash_spawn(i32 %67, %struct.shash_instance* %69, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %167

76:                                               ; preds = %65
  %77 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %78 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %81 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  store i32 %79, i32* %83, align 8
  %84 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %85 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %88 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %92 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %95 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 9
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  store i64 %93, i64* %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %100 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  %103 = call i32 @ALIGN(i32 %98, i64 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %106 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %110 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %112, 2
  %114 = call i64 (...) @crypto_tfm_ctx_alignment()
  %115 = call i32 @ALIGN(i32 %113, i64 %114)
  %116 = sext i32 %115 to i64
  %117 = add i64 4, %116
  %118 = trunc i64 %117 to i32
  %119 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %120 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* @hmac_init_tfm, align 4
  %124 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %125 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 9
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* @hmac_exit_tfm, align 4
  %129 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %130 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 9
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  store i32 %128, i32* %132, align 8
  %133 = load i32, i32* @hmac_init, align 4
  %134 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %135 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 8
  store i32 %133, i32* %136, align 8
  %137 = load i32, i32* @hmac_update, align 4
  %138 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %139 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 7
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* @hmac_final, align 4
  %142 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %143 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 6
  store i32 %141, i32* %144, align 8
  %145 = load i32, i32* @hmac_finup, align 4
  %146 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %147 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* @hmac_export, align 4
  %150 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %151 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* @hmac_import, align 4
  %154 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %155 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* @hmac_setkey, align 4
  %158 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %159 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  %161 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %162 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %163 = call i32 @shash_register_instance(%struct.crypto_template* %161, %struct.shash_instance* %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %76
  br label %167

167:                                              ; preds = %166, %75
  %168 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %169 = call i32 @shash_crypto_instance(%struct.shash_instance* %168)
  %170 = call i32 @shash_free_instance(i32 %169)
  br label %171

171:                                              ; preds = %167, %76
  br label %172

172:                                              ; preds = %171, %64, %55
  %173 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %174 = call i32 @crypto_mod_put(%struct.crypto_alg* %173)
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %172, %29, %17
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @crypto_check_attr_type(%struct.rtattr**, i32) #1

declare dso_local %struct.shash_instance* @shash_attr_alg(%struct.rtattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.shash_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.shash_instance*) #1

declare dso_local %struct.shash_instance* @shash_alloc_instance(i8*, %struct.crypto_alg*) #1

declare dso_local i32 @crypto_init_shash_spawn(i32, %struct.shash_instance*, i32) #1

declare dso_local i32 @shash_instance_ctx(%struct.shash_instance*) #1

declare dso_local i32 @shash_crypto_instance(%struct.shash_instance*) #1

declare dso_local i32 @ALIGN(i32, i64) #1

declare dso_local i64 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @shash_register_instance(%struct.crypto_template*, %struct.shash_instance*) #1

declare dso_local i32 @shash_free_instance(i32) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
