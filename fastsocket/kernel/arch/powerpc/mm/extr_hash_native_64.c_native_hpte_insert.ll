; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i64, i64 }

@htab_address = common dso_local global %struct.hash_pte* null, align 8
@HPTE_V_BOLTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"    insert(group=%lx, va=%016lx, pa=%016lx, rflags=%lx, vflags=%lx, psize=%d)\0A\00", align 1
@HPTES_PER_GROUP = common dso_local global i32 0, align 4
@HPTE_V_VALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c" i=%x hpte_v=%016lx, hpte_r=%016lx\0A\00", align 1
@HPTE_V_SECONDARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64, i32, i32)* @native_hpte_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @native_hpte_insert(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hash_pte*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %20, i64 %21
  store %struct.hash_pte* %22, %struct.hash_pte** %16, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @HPTE_V_BOLTED, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %7
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 (i8*, i32, i64, i64, ...) @DBG_LOW(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %30, i64 %31, i64 %32, i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %7
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %64, %36
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* @HPTES_PER_GROUP, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load %struct.hash_pte*, %struct.hash_pte** %16, align 8
  %43 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HPTE_V_VALID, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %41
  %49 = load %struct.hash_pte*, %struct.hash_pte** %16, align 8
  %50 = call i32 @native_lock_hpte(%struct.hash_pte* %49)
  %51 = load %struct.hash_pte*, %struct.hash_pte** %16, align 8
  %52 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HPTE_V_VALID, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %67

58:                                               ; preds = %48
  %59 = load %struct.hash_pte*, %struct.hash_pte** %16, align 8
  %60 = call i32 @native_unlock_hpte(%struct.hash_pte* %59)
  br label %61

61:                                               ; preds = %58, %41
  %62 = load %struct.hash_pte*, %struct.hash_pte** %16, align 8
  %63 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %62, i32 1
  store %struct.hash_pte* %63, %struct.hash_pte** %16, align 8
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %19, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %19, align 4
  br label %37

67:                                               ; preds = %57, %37
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @HPTES_PER_GROUP, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i64 -1, i64* %8, align 8
  br label %114

72:                                               ; preds = %67
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i64 @hpte_encode_v(i64 %73, i32 %74, i32 %75)
  %77 = load i64, i64* %13, align 8
  %78 = or i64 %76, %77
  %79 = load i64, i64* @HPTE_V_VALID, align 8
  %80 = or i64 %78, %79
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i64 @hpte_encode_r(i64 %81, i32 %82)
  %84 = load i64, i64* %12, align 8
  %85 = or i64 %83, %84
  store i64 %85, i64* %18, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @HPTE_V_BOLTED, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %72
  %91 = load i32, i32* %19, align 4
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %18, align 8
  %94 = call i32 (i8*, i32, i64, i64, ...) @DBG_LOW(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %91, i64 %92, i64 %93)
  br label %95

95:                                               ; preds = %90, %72
  %96 = load i64, i64* %18, align 8
  %97 = load %struct.hash_pte*, %struct.hash_pte** %16, align 8
  %98 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = call i32 (...) @eieio()
  %100 = load i64, i64* %17, align 8
  %101 = load %struct.hash_pte*, %struct.hash_pte** %16, align 8
  %102 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %103 = load i32, i32* %19, align 4
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = shl i32 %110, 3
  %112 = or i32 %103, %111
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %8, align 8
  br label %114

114:                                              ; preds = %95, %71
  %115 = load i64, i64* %8, align 8
  ret i64 %115
}

declare dso_local i32 @DBG_LOW(i8*, i32, i64, i64, ...) #1

declare dso_local i32 @native_lock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @native_unlock_hpte(%struct.hash_pte*) #1

declare dso_local i64 @hpte_encode_v(i64, i32, i32) #1

declare dso_local i64 @hpte_encode_r(i64, i32) #1

declare dso_local i32 @eieio(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1631}
