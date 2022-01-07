; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_alignment.c_do_alignment_ldrdstrd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_alignment.c_do_alignment_ldrdstrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@ai_dword = common dso_local global i32 0, align 4
@TYPE_LDST = common dso_local global i32 0, align 4
@TYPE_ERROR = common dso_local global i32 0, align 4
@TYPE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.pt_regs*)* @do_alignment_ldrdstrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_alignment_ldrdstrd(i64 %0, i64 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @RD_BITS(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* %6, align 8
  %16 = and i64 %15, 4261412864
  %17 = icmp eq i64 %16, 3892314112
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = lshr i64 %19, 8
  %21 = and i64 %20, 15
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @LDST_L_BIT(i64 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  br label %45

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 14
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %29
  br label %146

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  %39 = and i64 %38, 240
  %40 = icmp eq i64 %39, 208
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* @ai_dword, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @ai_dword, align 4
  %48 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %49 = call i64 @user_mode(%struct.pt_regs* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %99

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @get32_unaligned_check(i64 %56, i64 %57)
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %59, i64* %65, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 4
  %69 = call i32 @get32_unaligned_check(i64 %66, i64 %68)
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %70, i64* %76, align 8
  br label %97

77:                                               ; preds = %52
  %78 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %79 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @put32_unaligned_check(i64 %84, i64 %85)
  %87 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %94, 4
  %96 = call i32 @put32_unaligned_check(i64 %93, i64 %95)
  br label %97

97:                                               ; preds = %77, %55
  %98 = load i32, i32* @TYPE_LDST, align 4
  store i32 %98, i32* %4, align 4
  br label %150

99:                                               ; preds = %51
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %99
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @get32t_unaligned_check(i64 %103, i64 %104)
  %106 = load i64, i64* %12, align 8
  %107 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %108 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %106, i64* %112, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* %5, align 8
  %115 = add i64 %114, 4
  %116 = call i32 @get32t_unaligned_check(i64 %113, i64 %115)
  %117 = load i64, i64* %12, align 8
  %118 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %117, i64* %123, align 8
  br label %144

124:                                              ; preds = %99
  %125 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %126 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @put32t_unaligned_check(i64 %131, i64 %132)
  %134 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %135 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %5, align 8
  %142 = add i64 %141, 4
  %143 = call i32 @put32t_unaligned_check(i64 %140, i64 %142)
  br label %144

144:                                              ; preds = %124, %102
  %145 = load i32, i32* @TYPE_LDST, align 4
  store i32 %145, i32* %4, align 4
  br label %150

146:                                              ; preds = %36
  %147 = load i32, i32* @TYPE_ERROR, align 4
  store i32 %147, i32* %4, align 4
  br label %150

148:                                              ; No predecessors!
  %149 = load i32, i32* @TYPE_FAULT, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %146, %144, %97
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @RD_BITS(i64) #1

declare dso_local i32 @LDST_L_BIT(i64) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @get32_unaligned_check(i64, i64) #1

declare dso_local i32 @put32_unaligned_check(i64, i64) #1

declare dso_local i32 @get32t_unaligned_check(i64, i64) #1

declare dso_local i32 @put32t_unaligned_check(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
