; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vmac_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vmac_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.shash_instance = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.crypto_alg = type { %struct.TYPE_4__, i32, i32, i32 }

@CRYPTO_ALG_TYPE_SHASH = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_CIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vmac\00", align 1
@vmac_init_tfm = common dso_local global i32 0, align 4
@vmac_exit_tfm = common dso_local global i32 0, align 4
@vmac_init = common dso_local global i32 0, align 4
@vmac_update = common dso_local global i32 0, align 4
@vmac_final = common dso_local global i32 0, align 4
@vmac_setkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @vmac_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmac_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca %struct.shash_instance*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  %9 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %10 = load i32, i32* @CRYPTO_ALG_TYPE_SHASH, align 4
  %11 = call i32 @crypto_check_attr_type(%struct.rtattr** %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %123

16:                                               ; preds = %2
  %17 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %18 = load i32, i32* @CRYPTO_ALG_TYPE_CIPHER, align 4
  %19 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %20 = call %struct.shash_instance* @crypto_get_attr_alg(%struct.rtattr** %17, i32 %18, i32 %19)
  %21 = bitcast %struct.shash_instance* %20 to %struct.crypto_alg*
  store %struct.crypto_alg* %21, %struct.crypto_alg** %7, align 8
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %23 = bitcast %struct.crypto_alg* %22 to %struct.shash_instance*
  %24 = call i64 @IS_ERR(%struct.shash_instance* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %28 = bitcast %struct.crypto_alg* %27 to %struct.shash_instance*
  %29 = call i32 @PTR_ERR(%struct.shash_instance* %28)
  store i32 %29, i32* %3, align 4
  br label %123

30:                                               ; preds = %16
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %32 = bitcast %struct.crypto_alg* %31 to %struct.shash_instance*
  %33 = call %struct.shash_instance* @shash_alloc_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.shash_instance* %32)
  store %struct.shash_instance* %33, %struct.shash_instance** %6, align 8
  %34 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.shash_instance* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %37 = call i64 @IS_ERR(%struct.shash_instance* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %118

40:                                               ; preds = %30
  %41 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %42 = call i32 @shash_instance_ctx(%struct.shash_instance* %41)
  %43 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %44 = bitcast %struct.crypto_alg* %43 to %struct.shash_instance*
  %45 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %46 = call i32 @shash_crypto_instance(%struct.shash_instance* %45)
  %47 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %48 = call i32 @crypto_init_spawn(i32 %42, %struct.shash_instance* %44, i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %113

52:                                               ; preds = %40
  %53 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %54 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %57 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store i32 %55, i32* %59, align 4
  %60 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %61 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %64 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store i32 %62, i32* %66, align 4
  %67 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %68 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %71 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i32 %69, i32* %73, align 4
  %74 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %75 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 4, i32* %76, align 4
  %77 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %78 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 4, i32* %80, align 4
  %81 = load i32, i32* @vmac_init_tfm, align 4
  %82 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %83 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @vmac_exit_tfm, align 4
  %87 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %88 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* @vmac_init, align 4
  %92 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %93 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @vmac_update, align 4
  %96 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %97 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @vmac_final, align 4
  %100 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %101 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @vmac_setkey, align 4
  %104 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %105 = getelementptr inbounds %struct.shash_instance, %struct.shash_instance* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %108 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %109 = call i32 @shash_register_instance(%struct.crypto_template* %107, %struct.shash_instance* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %52
  br label %113

113:                                              ; preds = %112, %51
  %114 = load %struct.shash_instance*, %struct.shash_instance** %6, align 8
  %115 = call i32 @shash_crypto_instance(%struct.shash_instance* %114)
  %116 = call i32 @shash_free_instance(i32 %115)
  br label %117

117:                                              ; preds = %113, %52
  br label %118

118:                                              ; preds = %117, %39
  %119 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %120 = bitcast %struct.crypto_alg* %119 to %struct.shash_instance*
  %121 = call i32 @crypto_mod_put(%struct.shash_instance* %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %26, %14
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @crypto_check_attr_type(%struct.rtattr**, i32) #1

declare dso_local %struct.shash_instance* @crypto_get_attr_alg(%struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.shash_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.shash_instance*) #1

declare dso_local %struct.shash_instance* @shash_alloc_instance(i8*, %struct.shash_instance*) #1

declare dso_local i32 @crypto_init_spawn(i32, %struct.shash_instance*, i32, i32) #1

declare dso_local i32 @shash_instance_ctx(%struct.shash_instance*) #1

declare dso_local i32 @shash_crypto_instance(%struct.shash_instance*) #1

declare dso_local i32 @shash_register_instance(%struct.crypto_template*, %struct.shash_instance*) #1

declare dso_local i32 @shash_free_instance(i32) #1

declare dso_local i32 @crypto_mod_put(%struct.shash_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
