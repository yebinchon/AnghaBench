; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_process.c_elf_check_arch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_process.c_elf_check_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf32_hdr = type { i64, i32 }

@EM_FRV = common dso_local global i64 0, align 8
@EF_FRV_GPR_MASK = common dso_local global i32 0, align 4
@HSR0_GRN = common dso_local global i64 0, align 8
@HSR0_GRN_32 = common dso_local global i64 0, align 8
@EF_FRV_FPR_MASK = common dso_local global i32 0, align 4
@HSR0_FRN = common dso_local global i64 0, align 8
@HSR0_FRN_32 = common dso_local global i64 0, align 8
@EF_FRV_MULADD = common dso_local global i32 0, align 4
@PSR_IMPLE_FR405 = common dso_local global i64 0, align 8
@PSR_IMPLE_FR451 = common dso_local global i64 0, align 8
@EF_FRV_CPU_MASK = common dso_local global i32 0, align 4
@PSR_IMPLE_FR401 = common dso_local global i64 0, align 8
@PSR_IMPLE_FR551 = common dso_local global i64 0, align 8
@PSR_IMPLE_FR501 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_check_arch(%struct.elf32_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elf32_hdr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.elf32_hdr* %0, %struct.elf32_hdr** %3, align 8
  %6 = call i64 @__get_HSR(i32 0)
  store i64 %6, i64* %4, align 8
  %7 = call i64 (...) @__get_PSR()
  store i64 %7, i64* %5, align 8
  %8 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %9 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EM_FRV, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %119

14:                                               ; preds = %1
  %15 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %16 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EF_FRV_GPR_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %29 [
    i32 128, label %20
    i32 129, label %28
    i32 0, label %28
  ]

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @HSR0_GRN, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @HSR0_GRN_32, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %119

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %14, %14, %27
  br label %30

29:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %119

30:                                               ; preds = %28
  %31 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %32 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @EF_FRV_FPR_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %45 [
    i32 131, label %36
    i32 132, label %44
    i32 130, label %44
    i32 0, label %44
  ]

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @HSR0_FRN, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @HSR0_FRN_32, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %119

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %30, %30, %30, %43
  br label %46

45:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %119

46:                                               ; preds = %44
  %47 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %48 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @EF_FRV_MULADD, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @EF_FRV_MULADD, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load i64, i64* %5, align 8
  %56 = call i64 @PSR_IMPLE(i64 %55)
  %57 = load i64, i64* @PSR_IMPLE_FR405, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @PSR_IMPLE(i64 %60)
  %62 = load i64, i64* @PSR_IMPLE_FR451, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %119

65:                                               ; preds = %59, %54
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %68 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @EF_FRV_CPU_MASK, align 4
  %71 = and i32 %69, %70
  switch i32 %71, label %74 [
    i32 135, label %72
    i32 140, label %73
    i32 134, label %73
    i32 133, label %73
    i32 139, label %75
    i32 138, label %97
    i32 137, label %104
    i32 136, label %111
  ]

72:                                               ; preds = %66
  br label %118

73:                                               ; preds = %66, %66, %66
  br label %74

74:                                               ; preds = %66, %73
  store i32 0, i32* %2, align 4
  br label %119

75:                                               ; preds = %66
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @PSR_IMPLE(i64 %76)
  %78 = load i64, i64* @PSR_IMPLE_FR401, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @PSR_IMPLE(i64 %81)
  %83 = load i64, i64* @PSR_IMPLE_FR405, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @PSR_IMPLE(i64 %86)
  %88 = load i64, i64* @PSR_IMPLE_FR451, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i64, i64* %5, align 8
  %92 = call i64 @PSR_IMPLE(i64 %91)
  %93 = load i64, i64* @PSR_IMPLE_FR551, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %119

96:                                               ; preds = %90, %85, %80, %75
  br label %118

97:                                               ; preds = %66
  %98 = load i64, i64* %5, align 8
  %99 = call i64 @PSR_IMPLE(i64 %98)
  %100 = load i64, i64* @PSR_IMPLE_FR451, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %119

103:                                              ; preds = %97
  br label %118

104:                                              ; preds = %66
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @PSR_IMPLE(i64 %105)
  %107 = load i64, i64* @PSR_IMPLE_FR501, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %119

110:                                              ; preds = %104
  br label %118

111:                                              ; preds = %66
  %112 = load i64, i64* %5, align 8
  %113 = call i64 @PSR_IMPLE(i64 %112)
  %114 = load i64, i64* @PSR_IMPLE_FR551, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %119

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %110, %103, %96, %72
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %116, %109, %102, %95, %74, %64, %45, %42, %29, %26, %13
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @__get_HSR(i32) #1

declare dso_local i64 @__get_PSR(...) #1

declare dso_local i64 @PSR_IMPLE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
