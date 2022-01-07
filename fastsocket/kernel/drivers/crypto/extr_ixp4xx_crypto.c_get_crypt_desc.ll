; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_get_crypt_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_get_crypt_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_ctl = type { i64 }

@get_crypt_desc.idx = internal global i32 0, align 4
@desc_lock = common dso_local global i32 0, align 4
@crypt_virt = common dso_local global %struct.crypt_ctl* null, align 8
@CTL_FLAG_UNUSED = common dso_local global i64 0, align 8
@NPE_QLEN = common dso_local global i32 0, align 4
@CTL_FLAG_USED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypt_ctl* ()* @get_crypt_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypt_ctl* @get_crypt_desc() #0 {
  %1 = alloca %struct.crypt_ctl*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @desc_lock, i64 %4)
  %6 = load %struct.crypt_ctl*, %struct.crypt_ctl** @crypt_virt, align 8
  %7 = icmp ne %struct.crypt_ctl* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (...) @setup_crypt_desc()
  br label %14

14:                                               ; preds = %12, %0
  %15 = load %struct.crypt_ctl*, %struct.crypt_ctl** @crypt_virt, align 8
  %16 = icmp ne %struct.crypt_ctl* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* @desc_lock, i64 %22)
  store %struct.crypt_ctl* null, %struct.crypt_ctl** %1, align 8
  br label %56

24:                                               ; preds = %14
  %25 = load i32, i32* @get_crypt_desc.idx, align 4
  store i32 %25, i32* %2, align 4
  %26 = load %struct.crypt_ctl*, %struct.crypt_ctl** @crypt_virt, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %26, i64 %28
  %30 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CTL_FLAG_UNUSED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %24
  %35 = load i32, i32* @get_crypt_desc.idx, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @get_crypt_desc.idx, align 4
  %37 = load i32, i32* @NPE_QLEN, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* @get_crypt_desc.idx, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i64, i64* @CTL_FLAG_USED, align 8
  %42 = load %struct.crypt_ctl*, %struct.crypt_ctl** @crypt_virt, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %42, i64 %44
  %46 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %45, i32 0, i32 0
  store i64 %41, i64* %46, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* @desc_lock, i64 %47)
  %49 = load %struct.crypt_ctl*, %struct.crypt_ctl** @crypt_virt, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %49, i64 %51
  store %struct.crypt_ctl* %52, %struct.crypt_ctl** %1, align 8
  br label %56

53:                                               ; preds = %24
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* @desc_lock, i64 %54)
  store %struct.crypt_ctl* null, %struct.crypt_ctl** %1, align 8
  br label %56

56:                                               ; preds = %53, %40, %21
  %57 = load %struct.crypt_ctl*, %struct.crypt_ctl** %1, align 8
  ret %struct.crypt_ctl* %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @setup_crypt_desc(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
