; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_64.c_sun4u_compute_tid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_64.c_sun4u_compute_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@this_is_starfire = common dso_local global i64 0, align 8
@IMAP_TID_SHIFT = common dso_local global i32 0, align 4
@IMAP_TID_UPA = common dso_local global i32 0, align 4
@tlb_type = common dso_local global i64 0, align 8
@cheetah = common dso_local global i64 0, align 8
@cheetah_plus = common dso_local global i64 0, align 8
@__JALAPENO_ID = common dso_local global i64 0, align 8
@__SERRANO_ID = common dso_local global i64 0, align 8
@IMAP_TID_JBUS = common dso_local global i32 0, align 4
@IMAP_AID_SHIFT = common dso_local global i32 0, align 4
@IMAP_NID_SHIFT = common dso_local global i32 0, align 4
@IMAP_AID_SAFARI = common dso_local global i32 0, align 4
@IMAP_NID_SAFARI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @sun4u_compute_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4u_compute_tid(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* @this_is_starfire, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @starfire_translate(i64 %12, i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @IMAP_TID_SHIFT, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @IMAP_TID_UPA, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %80

21:                                               ; preds = %2
  %22 = load i64, i64* @tlb_type, align 8
  %23 = load i64, i64* @cheetah, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @tlb_type, align 8
  %27 = load i64, i64* @cheetah_plus, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %70

29:                                               ; preds = %25, %21
  %30 = call i64 asm "rdpr %ver, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = lshr i64 %31, 32
  %33 = load i64, i64* @__JALAPENO_ID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = lshr i64 %36, 32
  %38 = load i64, i64* @__SERRANO_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35, %29
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* @IMAP_TID_SHIFT, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 %41, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @IMAP_TID_JBUS, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %69

49:                                               ; preds = %35
  %50 = load i64, i64* %4, align 8
  %51 = and i64 %50, 31
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i64, i64* %4, align 8
  %54 = lshr i64 %53, 5
  %55 = and i64 %54, 31
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @IMAP_AID_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @IMAP_NID_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @IMAP_AID_SAFARI, align 4
  %65 = load i32, i32* @IMAP_NID_SAFARI, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %49, %40
  br label %79

70:                                               ; preds = %25
  %71 = load i64, i64* %4, align 8
  %72 = load i32, i32* @IMAP_TID_SHIFT, align 4
  %73 = zext i32 %72 to i64
  %74 = shl i64 %71, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @IMAP_TID_UPA, align 4
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %70, %69
  br label %80

80:                                               ; preds = %79, %11
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @starfire_translate(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 919}
