; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algboss.c_cryptomgr_schedule_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algboss.c_cryptomgr_schedule_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32, %struct.TYPE_6__, i32*, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.task_struct = type { i32 }
%struct.crypto_test_param = type { i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_BLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_BLKCIPHER_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_GENIV = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AEAD = common dso_local global i32 0, align 4
@crypto_nivaead_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TESTED = common dso_local global i32 0, align 4
@cryptomgr_test = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cryptomgr_test\00", align 1
@NOTIFY_STOP = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_alg*)* @cryptomgr_schedule_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptomgr_schedule_test(%struct.crypto_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_alg*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.crypto_test_param*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_alg* %0, %struct.crypto_alg** %3, align 8
  %7 = load i32, i32* @THIS_MODULE, align 4
  %8 = call i32 @try_module_get(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %107

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.crypto_test_param* @kzalloc(i32 12, i32 %12)
  store %struct.crypto_test_param* %13, %struct.crypto_test_param** %5, align 8
  %14 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %15 = icmp ne %struct.crypto_test_param* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %104

17:                                               ; preds = %11
  %18 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %19 = getelementptr inbounds %struct.crypto_test_param, %struct.crypto_test_param* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %22 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i32 %20, i32 %23, i32 4)
  %25 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %26 = getelementptr inbounds %struct.crypto_test_param, %struct.crypto_test_param* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %29 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcpy(i32 %27, i32 %30, i32 4)
  %32 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %33 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %37 = xor i32 %35, %36
  %38 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %17
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @CRYPTO_ALG_GENIV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %41
  %47 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %48 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %56 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %84, label %66

60:                                               ; preds = %46
  %61 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %62 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %60, %54, %41, %17
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CRYPTO_ALG_TYPE_AEAD, align 4
  %69 = xor i32 %67, %68
  %70 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %66
  %74 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %75 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, @crypto_nivaead_type
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %80 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78, %60, %54
  %85 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %78, %73, %66
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %91 = getelementptr inbounds %struct.crypto_test_param, %struct.crypto_test_param* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @cryptomgr_test, align 4
  %93 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %94 = call %struct.task_struct* @kthread_run(i32 %92, %struct.crypto_test_param* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %94, %struct.task_struct** %4, align 8
  %95 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %96 = call i64 @IS_ERR(%struct.task_struct* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %101

99:                                               ; preds = %88
  %100 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %100, i32* %2, align 4
  br label %109

101:                                              ; preds = %98
  %102 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %103 = call i32 @kfree(%struct.crypto_test_param* %102)
  br label %104

104:                                              ; preds = %101, %16
  %105 = load i32, i32* @THIS_MODULE, align 4
  %106 = call i32 @module_put(i32 %105)
  br label %107

107:                                              ; preds = %104, %10
  %108 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %99
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.crypto_test_param* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.crypto_test_param*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @kfree(%struct.crypto_test_param*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
