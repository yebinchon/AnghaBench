; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_htab.c_beat_read_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_htab.c_beat_read_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPTE_V_BOLTED = common dso_local global i32 0, align 4
@htab_hash_mask = common dso_local global i32 0, align 4
@HPTES_PER_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @beat_read_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beat_read_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [5 x i32], align 16
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = add i32 %5, 0
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %8 = call i32 @beat_read_htab_entries(i32 0, i32 %6, i32* %7)
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %10 = load i32, i32* %9, align 16
  %11 = load i32, i32* @HPTE_V_BOLTED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = or i64 %15, 32768
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HPTE_V_BOLTED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %3, align 8
  %25 = or i64 %24, 16384
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %23, %17
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @HPTE_V_BOLTED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %3, align 8
  %34 = or i64 %33, 8192
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %32, %26
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HPTE_V_BOLTED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %3, align 8
  %43 = or i64 %42, 4096
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %2, align 4
  %46 = add i32 %45, 4
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %48 = call i32 @beat_read_htab_entries(i32 0, i32 %46, i32* %47)
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = load i32, i32* @HPTE_V_BOLTED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %3, align 8
  %56 = or i64 %55, 2048
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %54, %44
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HPTE_V_BOLTED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %3, align 8
  %65 = or i64 %64, 1024
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %63, %57
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @HPTE_V_BOLTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %3, align 8
  %74 = or i64 %73, 512
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %72, %66
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @HPTE_V_BOLTED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %3, align 8
  %83 = or i64 %82, 256
  store i64 %83, i64* %3, align 8
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i32, i32* %2, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* @htab_hash_mask, align 4
  %88 = load i32, i32* @HPTES_PER_GROUP, align 4
  %89 = mul i32 %87, %88
  %90 = and i32 %86, %89
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* %2, align 4
  %92 = add i32 %91, 0
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %94 = call i32 @beat_read_htab_entries(i32 0, i32 %92, i32* %93)
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = load i32, i32* @HPTE_V_BOLTED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %84
  %101 = load i64, i64* %3, align 8
  %102 = or i64 %101, 128
  store i64 %102, i64* %3, align 8
  br label %103

103:                                              ; preds = %100, %84
  %104 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @HPTE_V_BOLTED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load i64, i64* %3, align 8
  %111 = or i64 %110, 64
  store i64 %111, i64* %3, align 8
  br label %112

112:                                              ; preds = %109, %103
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @HPTE_V_BOLTED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = load i64, i64* %3, align 8
  %120 = or i64 %119, 32
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %118, %112
  %122 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @HPTE_V_BOLTED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %121
  %128 = load i64, i64* %3, align 8
  %129 = or i64 %128, 16
  store i64 %129, i64* %3, align 8
  br label %130

130:                                              ; preds = %127, %121
  %131 = load i32, i32* %2, align 4
  %132 = add i32 %131, 4
  %133 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %134 = call i32 @beat_read_htab_entries(i32 0, i32 %132, i32* %133)
  %135 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = load i32, i32* @HPTE_V_BOLTED, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %130
  %141 = load i64, i64* %3, align 8
  %142 = or i64 %141, 8
  store i64 %142, i64* %3, align 8
  br label %143

143:                                              ; preds = %140, %130
  %144 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @HPTE_V_BOLTED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = load i64, i64* %3, align 8
  %151 = or i64 %150, 4
  store i64 %151, i64* %3, align 8
  br label %152

152:                                              ; preds = %149, %143
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @HPTE_V_BOLTED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %152
  %159 = load i64, i64* %3, align 8
  %160 = or i64 %159, 2
  store i64 %160, i64* %3, align 8
  br label %161

161:                                              ; preds = %158, %152
  %162 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @HPTE_V_BOLTED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = load i64, i64* %3, align 8
  %169 = or i64 %168, 1
  store i64 %169, i64* %3, align 8
  br label %170

170:                                              ; preds = %167, %161
  %171 = load i64, i64* %3, align 8
  %172 = trunc i64 %171 to i32
  ret i32 %172
}

declare dso_local i32 @beat_read_htab_entries(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
