; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_geode-aes.c_geode_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_geode-aes.c_geode_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geode_aes_op = type { i64, i64, i64, i32, i32, i32, i32, i32 }

@AES_CTRL_DCA = common dso_local global i32 0, align 4
@AES_CTRL_SCA = common dso_local global i32 0, align 4
@AES_DIR_ENCRYPT = common dso_local global i64 0, align 8
@AES_CTRL_ENCRYPT = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@AES_MODE_CBC = common dso_local global i64 0, align 8
@AES_CTRL_CBC = common dso_local global i32 0, align 4
@AES_WRITEIV0_REG = common dso_local global i32 0, align 4
@AES_FLAGS_HIDDENKEY = common dso_local global i32 0, align 4
@AES_CTRL_WRKEY = common dso_local global i32 0, align 4
@AES_WRITEKEY0_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.geode_aes_op*)* @geode_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geode_aes_crypt(%struct.geode_aes_op* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.geode_aes_op*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.geode_aes_op* %0, %struct.geode_aes_op** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %8 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

12:                                               ; preds = %1
  %13 = load i32, i32* @AES_CTRL_DCA, align 4
  %14 = load i32, i32* @AES_CTRL_SCA, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %19 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AES_DIR_ENCRYPT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load i32, i32* @AES_CTRL_ENCRYPT, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %12
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_lock_irqsave(i32* @lock, i64 %28)
  %30 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %31 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AES_MODE_CBC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i32, i32* @AES_CTRL_CBC, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @AES_WRITEIV0_REG, align 4
  %40 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %41 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @_writefield(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %27
  %45 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %46 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AES_FLAGS_HIDDENKEY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @AES_CTRL_WRKEY, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @AES_WRITEKEY0_REG, align 4
  %56 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %57 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @_writefield(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %44
  %61 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %62 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %65 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %68 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @do_crypt(i32 %63, i32 %66, i64 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %75 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AES_MODE_CBC, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %60
  %80 = load i32, i32* @AES_WRITEIV0_REG, align 4
  %81 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %82 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @_readfield(i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %60
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %86)
  %88 = load %struct.geode_aes_op*, %struct.geode_aes_op** %3, align 8
  %89 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %85, %11
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_writefield(i32, i32) #1

declare dso_local i32 @do_crypt(i32, i32, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @_readfield(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
