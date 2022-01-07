; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_atr_compute_perfect_hash_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_atr_compute_perfect_hash_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ixgbe_atr_input = type { i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_atr_compute_perfect_hash_82599(%union.ixgbe_atr_input* %0, %union.ixgbe_atr_input* %1) #0 {
  %3 = alloca %union.ixgbe_atr_input*, align 8
  %4 = alloca %union.ixgbe_atr_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.ixgbe_atr_input* %0, %union.ixgbe_atr_input** %3, align 8
  store %union.ixgbe_atr_input* %1, %union.ixgbe_atr_input** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %10 = bitcast %union.ixgbe_atr_input* %9 to i32**
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %15 = bitcast %union.ixgbe_atr_input* %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %13
  store i32 %19, i32* %17, align 4
  %20 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %21 = bitcast %union.ixgbe_atr_input* %20 to i32**
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %26 = bitcast %union.ixgbe_atr_input* %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %32 = bitcast %union.ixgbe_atr_input* %31 to i32**
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %37 = bitcast %union.ixgbe_atr_input* %36 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %43 = bitcast %union.ixgbe_atr_input* %42 to i32**
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %48 = bitcast %union.ixgbe_atr_input* %47 to i32**
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %54 = bitcast %union.ixgbe_atr_input* %53 to i32**
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %59 = bitcast %union.ixgbe_atr_input* %58 to i32**
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %57
  store i32 %63, i32* %61, align 4
  %64 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %65 = bitcast %union.ixgbe_atr_input* %64 to i32**
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %70 = bitcast %union.ixgbe_atr_input* %69 to i32**
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %68
  store i32 %74, i32* %72, align 4
  %75 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %76 = bitcast %union.ixgbe_atr_input* %75 to i32**
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %78, align 4
  %80 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %81 = bitcast %union.ixgbe_atr_input* %80 to i32**
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %79
  store i32 %85, i32* %83, align 4
  %86 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %87 = bitcast %union.ixgbe_atr_input* %86 to i32**
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 7
  %90 = load i32, i32* %89, align 4
  %91 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %92 = bitcast %union.ixgbe_atr_input* %91 to i32**
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %90
  store i32 %96, i32* %94, align 4
  %97 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %98 = bitcast %union.ixgbe_atr_input* %97 to i32**
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 8
  %101 = load i32, i32* %100, align 4
  %102 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %103 = bitcast %union.ixgbe_atr_input* %102 to i32**
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 8
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %101
  store i32 %107, i32* %105, align 4
  %108 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %109 = bitcast %union.ixgbe_atr_input* %108 to i32**
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 9
  %112 = load i32, i32* %111, align 4
  %113 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %114 = bitcast %union.ixgbe_atr_input* %113 to i32**
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 9
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %112
  store i32 %118, i32* %116, align 4
  %119 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %4, align 8
  %120 = bitcast %union.ixgbe_atr_input* %119 to i32**
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 10
  %123 = load i32, i32* %122, align 4
  %124 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %125 = bitcast %union.ixgbe_atr_input* %124 to i32**
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 10
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %123
  store i32 %129, i32* %127, align 4
  %130 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %131 = bitcast %union.ixgbe_atr_input* %130 to i32**
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ntohl(i32 %134)
  store i32 %135, i32* %7, align 4
  %136 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %137 = bitcast %union.ixgbe_atr_input* %136 to i32**
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %142 = bitcast %union.ixgbe_atr_input* %141 to i32**
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %140, %145
  %147 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %148 = bitcast %union.ixgbe_atr_input* %147 to i32**
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %146, %151
  %153 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %154 = bitcast %union.ixgbe_atr_input* %153 to i32**
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %152, %157
  %159 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %160 = bitcast %union.ixgbe_atr_input* %159 to i32**
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  %163 = load i32, i32* %162, align 4
  %164 = xor i32 %158, %163
  %165 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %166 = bitcast %union.ixgbe_atr_input* %165 to i32**
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 6
  %169 = load i32, i32* %168, align 4
  %170 = xor i32 %164, %169
  %171 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %172 = bitcast %union.ixgbe_atr_input* %171 to i32**
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 7
  %175 = load i32, i32* %174, align 4
  %176 = xor i32 %170, %175
  %177 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %178 = bitcast %union.ixgbe_atr_input* %177 to i32**
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 8
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %176, %181
  %183 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %184 = bitcast %union.ixgbe_atr_input* %183 to i32**
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 9
  %187 = load i32, i32* %186, align 4
  %188 = xor i32 %182, %187
  %189 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %190 = bitcast %union.ixgbe_atr_input* %189 to i32**
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 10
  %193 = load i32, i32* %192, align 4
  %194 = xor i32 %188, %193
  %195 = call i32 @ntohl(i32 %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = ashr i32 %196, 16
  %198 = load i32, i32* %5, align 4
  %199 = shl i32 %198, 16
  %200 = or i32 %197, %199
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = ashr i32 %202, 16
  %204 = xor i32 %201, %203
  %205 = load i32, i32* %5, align 4
  %206 = xor i32 %205, %204
  store i32 %206, i32* %5, align 4
  %207 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 0)
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = shl i32 %209, 16
  %211 = xor i32 %208, %210
  %212 = load i32, i32* %6, align 4
  %213 = xor i32 %212, %211
  store i32 %213, i32* %6, align 4
  %214 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 1)
  %215 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 2)
  %216 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 3)
  %217 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 4)
  %218 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 5)
  %219 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 6)
  %220 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 7)
  %221 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 8)
  %222 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 9)
  %223 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 10)
  %224 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 11)
  %225 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 12)
  %226 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 13)
  %227 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 14)
  %228 = call i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32 15)
  %229 = load i32, i32* %8, align 4
  %230 = and i32 %229, 8191
  %231 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %3, align 8
  %232 = bitcast %union.ixgbe_atr_input* %231 to %struct.TYPE_2__*
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @IXGBE_COMPUTE_BKT_HASH_ITERATION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
