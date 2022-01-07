; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unaligned.c_get_rse_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unaligned.c_get_rse_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64 }
%struct.switch_stack = type { i64, i64 }

@current = common dso_local global i64 0, align 8
@IA64_RBS_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"ignoring read from r%lu; only %lu registers are allocated!\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"r%lu, sw.bspstore=%lx pt.bspstore=%lx sof=%ld sol=%ld ridx=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"ignoring kernel read of r%lu; register isn't on the RBS!\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ubs_end=%p bsp=%p addr=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"rnat @%p = 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i64*, i32*)* @get_rse_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rse_reg(%struct.pt_regs* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.switch_stack*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %24 = bitcast %struct.pt_regs* %23 to %struct.switch_stack*
  %25 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %24, i64 -1
  store %struct.switch_stack* %25, %struct.switch_stack** %9, align 8
  %26 = load i64, i64* @current, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* @IA64_RBS_OFFSET, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %27, i64 %29
  %31 = bitcast i8* %30 to i64*
  store i64* %31, i64** %15, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 127
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %19, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 14
  %41 = and i32 %40, 15
  %42 = mul nsw i32 8, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %20, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 18
  %48 = and i32 %47, 127
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %21, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub i64 %50, 32
  store i64 %51, i64* %22, align 8
  %52 = load i64, i64* %22, align 8
  %53 = load i64, i64* %19, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %4
  %56 = load i64, i64* %6, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load i64, i64* %19, align 8
  %59 = call i32 (i8*, i8*, ...) @DPRINT(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %57, i64 %58)
  br label %199

60:                                               ; preds = %4
  %61 = load i64, i64* %22, align 8
  %62 = load i64, i64* %20, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* %21, align 8
  %67 = load i64, i64* %22, align 8
  %68 = call i64 @rotate_reg(i64 %65, i64 %66, i64 %67)
  store i64 %68, i64* %22, align 8
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i64, i64* %6, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %73 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %76 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %19, align 8
  %79 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = ashr i32 %81, 7
  %83 = and i32 %82, 127
  %84 = load i64, i64* %22, align 8
  %85 = call i32 (i8*, i8*, ...) @DPRINT(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %71, i64 %74, i64 %77, i64 %78, i32 %83, i64 %84)
  %86 = load i64*, i64** %15, align 8
  %87 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %88 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i64*
  %91 = call i64 @ia64_rse_num_regs(i64* %86, i64* %90)
  store i64 %91, i64* %18, align 8
  %92 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %93 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i64*
  %96 = load i64, i64* %19, align 8
  %97 = sub nsw i64 0, %96
  %98 = load i64, i64* %22, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i64* @ia64_rse_skip_regs(i64* %95, i64 %99)
  store i64* %100, i64** %11, align 8
  %101 = load i64*, i64** %11, align 8
  %102 = load i64*, i64** %15, align 8
  %103 = icmp uge i64* %101, %102
  br i1 %103, label %104, label %134

104:                                              ; preds = %69
  %105 = load i64*, i64** %11, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %7, align 8
  store i64 %106, i64* %107, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %133

110:                                              ; preds = %104
  %111 = load i64*, i64** %11, align 8
  %112 = call i64* @ia64_rse_rnat_addr(i64* %111)
  store i64* %112, i64** %12, align 8
  %113 = load i64*, i64** %12, align 8
  %114 = ptrtoint i64* %113 to i64
  %115 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %116 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp uge i64 %114, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %121 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %120, i32 0, i32 1
  store i64* %121, i64** %12, align 8
  br label %122

122:                                              ; preds = %119, %110
  %123 = load i64*, i64** %11, align 8
  %124 = call i64 @ia64_rse_slot_num(i64* %123)
  %125 = shl i64 1, %124
  store i64 %125, i64* %17, align 8
  %126 = load i64*, i64** %12, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %17, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = load i32*, i32** %8, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %122, %104
  br label %206

134:                                              ; preds = %69
  %135 = load i64, i64* @current, align 8
  %136 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %137 = call i32 @user_stack(i64 %135, %struct.pt_regs* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load i64, i64* %6, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 (i8*, i8*, ...) @DPRINT(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %141)
  br label %199

143:                                              ; preds = %134
  %144 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %145 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i64*
  store i64* %147, i64** %14, align 8
  %148 = load i64*, i64** %14, align 8
  %149 = load i64, i64* %18, align 8
  %150 = call i64* @ia64_rse_skip_regs(i64* %148, i64 %149)
  store i64* %150, i64** %13, align 8
  %151 = load i64*, i64** %13, align 8
  %152 = load i64, i64* %19, align 8
  %153 = sub nsw i64 0, %152
  %154 = call i64* @ia64_rse_skip_regs(i64* %151, i64 %153)
  store i64* %154, i64** %10, align 8
  %155 = load i64*, i64** %10, align 8
  %156 = load i64, i64* %22, align 8
  %157 = call i64* @ia64_rse_skip_regs(i64* %155, i64 %156)
  store i64* %157, i64** %11, align 8
  %158 = load i64*, i64** %13, align 8
  %159 = bitcast i64* %158 to i8*
  %160 = load i64*, i64** %10, align 8
  %161 = bitcast i64* %160 to i8*
  %162 = load i64*, i64** %11, align 8
  %163 = bitcast i64* %162 to i8*
  %164 = call i32 (i8*, i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %159, i8* %161, i8* %163)
  %165 = load i64, i64* @current, align 8
  %166 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %167 = load i64*, i64** %13, align 8
  %168 = ptrtoint i64* %167 to i64
  %169 = load i64*, i64** %11, align 8
  %170 = ptrtoint i64* %169 to i64
  %171 = load i64*, i64** %7, align 8
  %172 = call i32 @ia64_peek(i64 %165, %struct.switch_stack* %166, i64 %168, i64 %170, i64* %171)
  %173 = load i32*, i32** %8, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %198

175:                                              ; preds = %143
  %176 = load i64*, i64** %11, align 8
  %177 = call i64* @ia64_rse_rnat_addr(i64* %176)
  store i64* %177, i64** %12, align 8
  %178 = load i64*, i64** %11, align 8
  %179 = call i64 @ia64_rse_slot_num(i64* %178)
  %180 = shl i64 1, %179
  store i64 %180, i64* %17, align 8
  %181 = load i64*, i64** %12, align 8
  %182 = bitcast i64* %181 to i8*
  %183 = load i64, i64* %16, align 8
  %184 = call i32 (i8*, i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %182, i64 %183)
  %185 = load i64, i64* @current, align 8
  %186 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %187 = load i64*, i64** %13, align 8
  %188 = ptrtoint i64* %187 to i64
  %189 = load i64*, i64** %12, align 8
  %190 = ptrtoint i64* %189 to i64
  %191 = call i32 @ia64_peek(i64 %185, %struct.switch_stack* %186, i64 %188, i64 %190, i64* %16)
  %192 = load i64, i64* %16, align 8
  %193 = load i64, i64* %17, align 8
  %194 = and i64 %192, %193
  %195 = icmp ne i64 %194, 0
  %196 = zext i1 %195 to i32
  %197 = load i32*, i32** %8, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %175, %143
  br label %206

199:                                              ; preds = %139, %55
  %200 = load i64*, i64** %7, align 8
  store i64 0, i64* %200, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i32*, i32** %8, align 8
  store i32 0, i32* %204, align 4
  br label %205

205:                                              ; preds = %203, %199
  br label %206

206:                                              ; preds = %205, %198, %133
  ret void
}

declare dso_local i32 @DPRINT(i8*, i8*, ...) #1

declare dso_local i64 @rotate_reg(i64, i64, i64) #1

declare dso_local i64 @ia64_rse_num_regs(i64*, i64*) #1

declare dso_local i64* @ia64_rse_skip_regs(i64*, i64) #1

declare dso_local i64* @ia64_rse_rnat_addr(i64*) #1

declare dso_local i64 @ia64_rse_slot_num(i64*) #1

declare dso_local i32 @user_stack(i64, %struct.pt_regs*) #1

declare dso_local i32 @ia64_peek(i64, %struct.switch_stack*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
