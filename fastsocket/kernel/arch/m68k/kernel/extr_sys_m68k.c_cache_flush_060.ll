; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_sys_m68k.c_cache_flush_060.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_sys_m68k.c_cache_flush_060.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i64)* @cache_flush_060 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_flush_060(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
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
  switch i32 %13, label %131 [
    i32 130, label %14
    i32 129, label %21
    i32 128, label %132
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %18 [
    i32 132, label %16
    i32 131, label %17
    i32 133, label %19
  ]

16:                                               ; preds = %14
  call void asm sideeffect ".chip 68060\0A\09cpusha %dc\0A\09.chip 68k", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %20

17:                                               ; preds = %14
  call void asm sideeffect ".chip 68060\0A\09cpusha %ic\0A\09.chip 68k", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %20

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %14, %18
  call void asm sideeffect ".chip 68060\0A\09cpusha %bc\0A\09.chip 68k", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  br label %20

20:                                               ; preds = %19, %17, %16
  br label %172

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = and i64 %22, 15
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = and i64 %26, -16
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @virt_to_phys_060(i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %68, label %31

31:                                               ; preds = %21
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @PAGE_MASK, align 8
  %35 = xor i64 %34, -1
  %36 = and i64 %33, %35
  %37 = sub i64 %32, %36
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %173

42:                                               ; preds = %31
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %60, %42
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @virt_to_phys_060(i64 %51)
  store i64 %52, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %67

55:                                               ; preds = %50
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ule i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %173

60:                                               ; preds = %55
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %9, align 8
  br label %50

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %21
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 15
  %71 = lshr i64 %70, 4
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* @PAGE_SIZE, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @PAGE_MASK, align 8
  %75 = xor i64 %74, -1
  %76 = and i64 %73, %75
  %77 = sub i64 %72, %76
  %78 = lshr i64 %77, 4
  store i64 %78, i64* %11, align 8
  br label %79

79:                                               ; preds = %129, %68
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %9, align 8
  %82 = icmp ne i64 %80, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  switch i32 %84, label %89 [
    i32 132, label %85
    i32 131, label %87
    i32 133, label %90
  ]

85:                                               ; preds = %83
  %86 = load i64, i64* %10, align 8
  call void asm sideeffect ".chip 68060\0A\09cpushl %dc,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %86) #2, !srcloc !5
  br label %92

87:                                               ; preds = %83
  %88 = load i64, i64* %10, align 8
  call void asm sideeffect ".chip 68060\0A\09cpushl %ic,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %88) #2, !srcloc !6
  br label %92

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %83, %89
  %91 = load i64, i64* %10, align 8
  call void asm sideeffect ".chip 68060\0A\09cpushl %bc,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %91) #2, !srcloc !7
  br label %92

92:                                               ; preds = %90, %87, %85
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %11, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %126, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %126

99:                                               ; preds = %96
  %100 = load i64, i64* @PAGE_SIZE, align 8
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* @PAGE_MASK, align 8
  %104 = load i64, i64* %6, align 8
  %105 = and i64 %104, %103
  store i64 %105, i64* %6, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = udiv i64 %106, 16
  store i64 %107, i64* %11, align 8
  br label %108

108:                                              ; preds = %118, %99
  %109 = load i64, i64* %6, align 8
  %110 = call i64 @virt_to_phys_060(i64 %109)
  store i64 %110, i64* %10, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %125

113:                                              ; preds = %108
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp ule i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  br label %173

118:                                              ; preds = %113
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %9, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* @PAGE_SIZE, align 8
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %6, align 8
  br label %108

125:                                              ; preds = %112
  br label %129

126:                                              ; preds = %96, %92
  %127 = load i64, i64* %10, align 8
  %128 = add i64 %127, 16
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %126, %125
  br label %79

130:                                              ; preds = %79
  br label %172

131:                                              ; preds = %4
  br label %132

132:                                              ; preds = %4, %131
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @PAGE_MASK, align 8
  %135 = xor i64 %134, -1
  %136 = and i64 %133, %135
  %137 = load i64, i64* @PAGE_SIZE, align 8
  %138 = sub i64 %137, 1
  %139 = add i64 %136, %138
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %9, align 8
  %142 = load i64, i64* @PAGE_MASK, align 8
  %143 = load i64, i64* %6, align 8
  %144 = and i64 %143, %142
  store i64 %144, i64* %6, align 8
  %145 = load i64, i64* @PAGE_SHIFT, align 8
  %146 = load i64, i64* %9, align 8
  %147 = lshr i64 %146, %145
  store i64 %147, i64* %9, align 8
  br label %148

148:                                              ; preds = %167, %132
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, -1
  store i64 %150, i64* %9, align 8
  %151 = icmp ne i64 %149, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %148
  %153 = load i64, i64* %6, align 8
  %154 = call i64 @virt_to_phys_060(i64 %153)
  store i64 %154, i64* %10, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  br label %167

157:                                              ; preds = %152
  %158 = load i32, i32* %8, align 4
  switch i32 %158, label %163 [
    i32 132, label %159
    i32 131, label %161
    i32 133, label %164
  ]

159:                                              ; preds = %157
  %160 = load i64, i64* %10, align 8
  call void asm sideeffect ".chip 68060\0A\09cpushp %dc,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %160) #2, !srcloc !8
  br label %166

161:                                              ; preds = %157
  %162 = load i64, i64* %10, align 8
  call void asm sideeffect ".chip 68060\0A\09cpushp %ic,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %162) #2, !srcloc !9
  br label %166

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %157, %163
  %165 = load i64, i64* %10, align 8
  call void asm sideeffect ".chip 68060\0A\09cpushp %bc,($0)\0A\09.chip 68k", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %165) #2, !srcloc !10
  br label %166

166:                                              ; preds = %164, %161, %159
  br label %167

167:                                              ; preds = %166, %156
  %168 = load i64, i64* @PAGE_SIZE, align 8
  %169 = load i64, i64* %6, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %6, align 8
  br label %148

171:                                              ; preds = %148
  br label %172

172:                                              ; preds = %171, %130, %20
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %172, %117, %59, %41
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i64 @virt_to_phys_060(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 516, i32 530, i32 551}
!3 = !{i32 619, i32 633, i32 654}
!4 = !{i32 732, i32 746, i32 767}
!5 = !{i32 1382, i32 1396, i32 1427}
!6 = !{i32 1535, i32 1549, i32 1580}
!7 = !{i32 1702, i32 1716, i32 1747}
!8 = !{i32 2479, i32 2493, i32 2524}
!9 = !{i32 2632, i32 2646, i32 2677}
!10 = !{i32 2799, i32 2813, i32 2844}
