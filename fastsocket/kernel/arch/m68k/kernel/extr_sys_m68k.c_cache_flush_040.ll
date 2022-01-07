; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_sys_m68k.c_cache_flush_040.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_sys_m68k.c_cache_flush_040.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i64)* @cache_flush_040 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_flush_040(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %139 [
    i32 130, label %14
    i32 129, label %21
    i32 128, label %140
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %18 [
    i32 132, label %16
    i32 131, label %17
    i32 133, label %19
  ]

16:                                               ; preds = %14
  call void asm sideeffect "nop\0A\09.chip 68040\0A\09cpusha %dc\0A\09.chip 68k", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %20

17:                                               ; preds = %14
  call void asm sideeffect "nop\0A\09.chip 68040\0A\09cpusha %ic\0A\09.chip 68k", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %20

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %14, %18
  call void asm sideeffect "nop\0A\09.chip 68040\0A\09cpusha %bc\0A\09.chip 68k", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  br label %20

20:                                               ; preds = %19, %17, %16
  br label %178

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @virt_to_phys_040(i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @PAGE_MASK, align 4
  %28 = or i32 %27, 15
  %29 = xor i32 %28, -1
  %30 = sext i32 %29 to i64
  %31 = and i64 %26, %30
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = and i64 %35, 15
  %37 = add i64 %34, %36
  %38 = add i64 %37, 15
  %39 = lshr i64 %38, 4
  store i64 %39, i64* %9, align 8
  br label %81

40:                                               ; preds = %21
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @PAGE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = sext i32 %44 to i64
  %46 = and i64 %42, %45
  %47 = sub i64 %41, %46
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %179

52:                                               ; preds = %40
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %70, %52
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @virt_to_phys_040(i64 %61)
  store i64 %62, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %77

65:                                               ; preds = %60
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %179

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %9, align 8
  br label %60

77:                                               ; preds = %64
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 15
  %80 = lshr i64 %79, 4
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %77, %25
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* @PAGE_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = sext i32 %85 to i64
  %87 = and i64 %83, %86
  %88 = sub i64 %82, %87
  %89 = lshr i64 %88, 4
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %137, %81
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %9, align 8
  %93 = icmp ne i64 %91, 0
  br i1 %93, label %94, label %138

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  switch i32 %95, label %100 [
    i32 132, label %96
    i32 131, label %98
    i32 133, label %101
  ]

96:                                               ; preds = %94
  %97 = load i64, i64* %10, align 8
  call void asm sideeffect "nop\0A\09.chip 68040\0A\09cpushl %dc,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %97) #2, !srcloc !5
  br label %103

98:                                               ; preds = %94
  %99 = load i64, i64* %10, align 8
  call void asm sideeffect "nop\0A\09.chip 68040\0A\09cpushl %ic,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %99) #2, !srcloc !6
  br label %103

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %94, %100
  %102 = load i64, i64* %10, align 8
  call void asm sideeffect "nop\0A\09.chip 68040\0A\09cpushl %bc,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %102) #2, !srcloc !7
  br label %103

103:                                              ; preds = %101, %98, %96
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %11, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %134, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %9, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %107
  %111 = load i64, i64* @PAGE_SIZE, align 8
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %6, align 8
  %114 = load i64, i64* @PAGE_SIZE, align 8
  %115 = udiv i64 %114, 16
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %126, %110
  %117 = load i64, i64* %6, align 8
  %118 = call i64 @virt_to_phys_040(i64 %117)
  store i64 %118, i64* %10, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %133

121:                                              ; preds = %116
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %11, align 8
  %124 = icmp ule i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %179

126:                                              ; preds = %121
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %9, align 8
  %129 = sub i64 %128, %127
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* @PAGE_SIZE, align 8
  %131 = load i64, i64* %6, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %6, align 8
  br label %116

133:                                              ; preds = %120
  br label %137

134:                                              ; preds = %107, %103
  %135 = load i64, i64* %10, align 8
  %136 = add i64 %135, 16
  store i64 %136, i64* %10, align 8
  br label %137

137:                                              ; preds = %134, %133
  br label %90

138:                                              ; preds = %90
  br label %178

139:                                              ; preds = %4
  br label %140

140:                                              ; preds = %4, %139
  %141 = load i64, i64* %6, align 8
  %142 = load i32, i32* @PAGE_MASK, align 4
  %143 = xor i32 %142, -1
  %144 = sext i32 %143 to i64
  %145 = and i64 %141, %144
  %146 = load i64, i64* @PAGE_SIZE, align 8
  %147 = sub i64 %146, 1
  %148 = add i64 %145, %147
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %9, align 8
  %151 = load i64, i64* @PAGE_SHIFT, align 8
  %152 = load i64, i64* %9, align 8
  %153 = lshr i64 %152, %151
  store i64 %153, i64* %9, align 8
  br label %154

154:                                              ; preds = %173, %140
  %155 = load i64, i64* %9, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %9, align 8
  %157 = icmp ne i64 %155, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %154
  %159 = load i64, i64* %6, align 8
  %160 = call i64 @virt_to_phys_040(i64 %159)
  store i64 %160, i64* %10, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  br label %173

163:                                              ; preds = %158
  %164 = load i32, i32* %8, align 4
  switch i32 %164, label %169 [
    i32 132, label %165
    i32 131, label %167
    i32 133, label %170
  ]

165:                                              ; preds = %163
  %166 = load i64, i64* %10, align 8
  call void asm sideeffect "nop\0A\09.chip 68040\0A\09cpushp %dc,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %166) #2, !srcloc !8
  br label %172

167:                                              ; preds = %163
  %168 = load i64, i64* %10, align 8
  call void asm sideeffect "nop\0A\09.chip 68040\0A\09cpushp %ic,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %168) #2, !srcloc !9
  br label %172

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %163, %169
  %171 = load i64, i64* %10, align 8
  call void asm sideeffect "nop\0A\09.chip 68040\0A\09cpushp %bc,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %171) #2, !srcloc !10
  br label %172

172:                                              ; preds = %170, %167, %165
  br label %173

173:                                              ; preds = %172, %162
  %174 = load i64, i64* @PAGE_SIZE, align 8
  %175 = load i64, i64* %6, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %6, align 8
  br label %154

177:                                              ; preds = %154
  br label %178

178:                                              ; preds = %177, %138, %20
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %178, %125, %69, %51
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i64 @virt_to_phys_040(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 501, i32 507, i32 529, i32 550}
!3 = !{i32 618, i32 624, i32 646, i32 667}
!4 = !{i32 745, i32 751, i32 773, i32 794}
!5 = !{i32 1463, i32 1469, i32 1495, i32 1526}
!6 = !{i32 1634, i32 1640, i32 1666, i32 1697}
!7 = !{i32 1819, i32 1825, i32 1851, i32 1882}
!8 = !{i32 2504, i32 2510, i32 2536, i32 2567}
!9 = !{i32 2675, i32 2681, i32 2707, i32 2738}
!10 = !{i32 2860, i32 2866, i32 2892, i32 2923}
