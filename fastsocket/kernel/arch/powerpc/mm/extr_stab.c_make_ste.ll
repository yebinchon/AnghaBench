; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_stab.c_make_ste.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_stab.c_make_ste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_entry = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }

@SID_SHIFT = common dso_local global i64 0, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@STE_VSID_SHIFT = common dso_local global i64 0, align 8
@STE_ESID_KP = common dso_local global i64 0, align 8
@STE_ESID_V = common dso_local global i64 0, align 8
@STE_ESID_KS = common dso_local global i64 0, align 8
@ESID_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @make_ste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_ste(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.stab_entry*, align 8
  %17 = alloca %struct.stab_entry*, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @SID_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = load i64, i64* @PAGE_OFFSET, align 8
  %23 = icmp uge i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @STE_VSID_SHIFT, align 8
  %28 = shl i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @SID_SHIFT, align 8
  %31 = shl i64 %29, %30
  %32 = load i64, i64* @STE_ESID_KP, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* @STE_ESID_V, align 8
  %35 = or i64 %33, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %18, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %3
  %39 = load i64, i64* @STE_ESID_KS, align 8
  %40 = load i64, i64* %8, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %38, %3
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %43, 31
  %45 = shl i64 %44, 3
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = and i64 %48, 31
  %50 = shl i64 %49, 7
  %51 = or i64 %47, %50
  %52 = inttoptr i64 %51 to %struct.stab_entry*
  store %struct.stab_entry* %52, %struct.stab_entry** %16, align 8
  store i64 0, i64* %11, align 8
  br label %53

53:                                               ; preds = %99, %42
  %54 = load i64, i64* %11, align 8
  %55 = icmp ult i64 %54, 2
  br i1 %55, label %56, label %102

56:                                               ; preds = %53
  store i64 0, i64* %10, align 8
  br label %57

57:                                               ; preds = %81, %56
  %58 = load i64, i64* %10, align 8
  %59 = icmp ult i64 %58, 8
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load %struct.stab_entry*, %struct.stab_entry** %16, align 8
  %62 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @STE_ESID_V, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.stab_entry*, %struct.stab_entry** %16, align 8
  %70 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = call i32 (...) @eieio()
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.stab_entry*, %struct.stab_entry** %16, align 8
  %74 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %10, align 8
  %78 = or i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %188

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  %84 = load %struct.stab_entry*, %struct.stab_entry** %16, align 8
  %85 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %84, i32 1
  store %struct.stab_entry* %85, %struct.stab_entry** %16, align 8
  br label %57

86:                                               ; preds = %57
  %87 = load i64, i64* %6, align 8
  %88 = xor i64 %87, -1
  %89 = and i64 %88, 31
  %90 = shl i64 %89, 3
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %15, align 4
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = xor i64 %93, -1
  %95 = and i64 %94, 31
  %96 = shl i64 %95, 7
  %97 = or i64 %92, %96
  %98 = inttoptr i64 %97 to %struct.stab_entry*
  store %struct.stab_entry* %98, %struct.stab_entry** %16, align 8
  br label %99

99:                                               ; preds = %86
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %11, align 8
  br label %53

102:                                              ; preds = %53
  %103 = call %struct.TYPE_2__* (...) @get_paca()
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %106

106:                                              ; preds = %156, %102
  %107 = load i64, i64* %14, align 8
  %108 = icmp ult i64 %107, 16
  br i1 %108, label %109, label %159

109:                                              ; preds = %106
  %110 = load i64, i64* %13, align 8
  %111 = icmp ult i64 %110, 8
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load i64, i64* %6, align 8
  %114 = and i64 %113, 31
  %115 = shl i64 %114, 3
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %15, align 4
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = and i64 %118, 31
  %120 = shl i64 %119, 7
  %121 = or i64 %117, %120
  %122 = inttoptr i64 %121 to %struct.stab_entry*
  store %struct.stab_entry* %122, %struct.stab_entry** %16, align 8
  %123 = load %struct.stab_entry*, %struct.stab_entry** %16, align 8
  %124 = load i64, i64* %13, align 8
  %125 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %123, i64 %124
  store %struct.stab_entry* %125, %struct.stab_entry** %17, align 8
  br label %143

126:                                              ; preds = %109
  %127 = load i64, i64* %6, align 8
  %128 = xor i64 %127, -1
  %129 = and i64 %128, 31
  %130 = shl i64 %129, 3
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %15, align 4
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* %6, align 8
  %134 = xor i64 %133, -1
  %135 = and i64 %134, 31
  %136 = shl i64 %135, 7
  %137 = or i64 %132, %136
  %138 = inttoptr i64 %137 to %struct.stab_entry*
  store %struct.stab_entry* %138, %struct.stab_entry** %16, align 8
  %139 = load %struct.stab_entry*, %struct.stab_entry** %16, align 8
  %140 = load i64, i64* %13, align 8
  %141 = sub i64 %140, 8
  %142 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %139, i64 %141
  store %struct.stab_entry* %142, %struct.stab_entry** %17, align 8
  br label %143

143:                                              ; preds = %126, %112
  %144 = load %struct.stab_entry*, %struct.stab_entry** %17, align 8
  %145 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ESID_MASK, align 8
  %148 = and i64 %146, %147
  %149 = load i64, i64* @PAGE_OFFSET, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %159

152:                                              ; preds = %143
  %153 = load i64, i64* %13, align 8
  %154 = add i64 %153, 1
  %155 = and i64 %154, 15
  store i64 %155, i64* %13, align 8
  br label %156

156:                                              ; preds = %152
  %157 = load i64, i64* %14, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %14, align 8
  br label %106

159:                                              ; preds = %151, %106
  %160 = load i64, i64* %13, align 8
  %161 = add i64 %160, 1
  %162 = and i64 %161, 15
  %163 = call %struct.TYPE_2__* (...) @get_paca()
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  call void asm sideeffect "isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %165 = load %struct.stab_entry*, %struct.stab_entry** %17, align 8
  %166 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SID_SHIFT, align 8
  %169 = lshr i64 %167, %168
  store i64 %169, i64* %12, align 8
  %170 = load %struct.stab_entry*, %struct.stab_entry** %17, align 8
  %171 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %170, i32 0, i32 0
  store i64 0, i64* %171, align 8
  call void asm sideeffect "sync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %172 = load i64, i64* %9, align 8
  %173 = load %struct.stab_entry*, %struct.stab_entry** %17, align 8
  %174 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  %175 = call i32 (...) @eieio()
  %176 = load i64, i64* %8, align 8
  %177 = load %struct.stab_entry*, %struct.stab_entry** %17, align 8
  %178 = getelementptr inbounds %struct.stab_entry, %struct.stab_entry* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load i64, i64* @SID_SHIFT, align 8
  %181 = shl i64 %179, %180
  call void asm sideeffect "slbie  $0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %181) #2, !srcloc !4
  call void asm sideeffect "sync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  %182 = load i32, i32* %15, align 4
  %183 = zext i32 %182 to i64
  %184 = load i64, i64* %13, align 8
  %185 = and i64 %184, 7
  %186 = or i64 %183, %185
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %159, %67
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @eieio(...) #1

declare dso_local %struct.TYPE_2__* @get_paca(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2059}
!3 = !{i32 2178}
!4 = !{i32 2302}
!5 = !{i32 2363}
