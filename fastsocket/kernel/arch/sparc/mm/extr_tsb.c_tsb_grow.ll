; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_tsb.c_tsb_grow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_tsb.c_tsb_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32, %struct.tsb* }
%struct.tsb = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@MAX_ORDER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@tsb_caches = common dso_local global i32* null, align 8
@tlb_type = common dso_local global i64 0, align 8
@cheetah_plus = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsb_grow(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tsb*, align 8
  %12 = alloca %struct.tsb*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 1048576, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = load i64, i64* @MAX_ORDER, align 8
  %22 = shl i64 %20, %21
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = load i64, i64* @MAX_ORDER, align 8
  %27 = shl i64 %25, %26
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %24, %3
  store i64 0, i64* %13, align 8
  store i64 8192, i64* %8, align 8
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @tsb_size_to_rss_limit(i64 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %46

40:                                               ; preds = %33
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = shl i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %29

46:                                               ; preds = %39, %29
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i64 -1, i64* %15, align 8
  br label %51

51:                                               ; preds = %50, %46
  br label %52

52:                                               ; preds = %89, %51
  %53 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %53, i32* %16, align 4
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = mul i64 %55, 2
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @__GFP_NOWARN, align 4
  %60 = load i32, i32* @__GFP_NORETRY, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i32*, i32** @tsb_caches, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 (...) @numa_node_id()
  %69 = call %struct.tsb* @kmem_cache_alloc_node(i32 %66, i32 %67, i32 %68)
  store %struct.tsb* %69, %struct.tsb** %12, align 8
  %70 = load %struct.tsb*, %struct.tsb** %12, align 8
  %71 = icmp ne %struct.tsb* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %62
  %77 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %78 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load %struct.tsb*, %struct.tsb** %83, align 8
  %85 = icmp eq %struct.tsb* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load i64, i64* %13, align 8
  %88 = icmp ugt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i64 0, i64* %13, align 8
  store i64 8192, i64* %8, align 8
  store i64 -1, i64* %15, align 8
  br label %52

90:                                               ; preds = %86, %76
  %91 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %92 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load %struct.tsb*, %struct.tsb** %97, align 8
  %99 = icmp ne %struct.tsb* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %90
  %101 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %102 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i64 -1, i64* %107, align 8
  br label %108

108:                                              ; preds = %100, %90
  br label %242

109:                                              ; preds = %62
  %110 = load %struct.tsb*, %struct.tsb** %12, align 8
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @tsb_init(%struct.tsb* %110, i64 %111)
  %113 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %114 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @spin_lock_irqsave(i32* %115, i64 %116)
  %118 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %119 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i64, i64* %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load %struct.tsb*, %struct.tsb** %124, align 8
  store %struct.tsb* %125, %struct.tsb** %11, align 8
  %126 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %127 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = and i64 %134, 7
  store i64 %135, i64* %14, align 8
  %136 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %137 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  store i64 %145, i64* %9, align 8
  %146 = load %struct.tsb*, %struct.tsb** %11, align 8
  %147 = icmp ne %struct.tsb* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %109
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %151 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = load i64, i64* %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ult i64 %149, %157
  br label %159

159:                                              ; preds = %148, %109
  %160 = phi i1 [ false, %109 ], [ %158, %148 ]
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  %165 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %166 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  %170 = load i32*, i32** @tsb_caches, align 8
  %171 = load i64, i64* %13, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.tsb*, %struct.tsb** %12, align 8
  %175 = call i32 @kmem_cache_free(i32 %173, %struct.tsb* %174)
  br label %242

176:                                              ; preds = %159
  %177 = load i64, i64* %15, align 8
  %178 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %179 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = load i64, i64* %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  store i64 %177, i64* %184, align 8
  %185 = load %struct.tsb*, %struct.tsb** %11, align 8
  %186 = icmp ne %struct.tsb* %185, null
  br i1 %186, label %187, label %209

187:                                              ; preds = %176
  %188 = load %struct.tsb*, %struct.tsb** %11, align 8
  %189 = ptrtoint %struct.tsb* %188 to i64
  store i64 %189, i64* %17, align 8
  %190 = load %struct.tsb*, %struct.tsb** %12, align 8
  %191 = ptrtoint %struct.tsb* %190 to i64
  store i64 %191, i64* %18, align 8
  %192 = load i64, i64* @tlb_type, align 8
  %193 = load i64, i64* @cheetah_plus, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %199, label %195

195:                                              ; preds = %187
  %196 = load i64, i64* @tlb_type, align 8
  %197 = load i64, i64* @hypervisor, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %195, %187
  %200 = load i64, i64* %17, align 8
  %201 = call i64 @__pa(i64 %200)
  store i64 %201, i64* %17, align 8
  %202 = load i64, i64* %18, align 8
  %203 = call i64 @__pa(i64 %202)
  store i64 %203, i64* %18, align 8
  br label %204

204:                                              ; preds = %199, %195
  %205 = load i64, i64* %17, align 8
  %206 = load i64, i64* %9, align 8
  %207 = load i64, i64* %18, align 8
  %208 = load i64, i64* %8, align 8
  call void @copy_tsb(i64 %205, i64 %206, i64 %207, i64 %208)
  br label %209

209:                                              ; preds = %204, %176
  %210 = load %struct.tsb*, %struct.tsb** %12, align 8
  %211 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %212 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %213, align 8
  %215 = load i64, i64* %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 3
  store %struct.tsb* %210, %struct.tsb** %217, align 8
  %218 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %219 = load i64, i64* %5, align 8
  %220 = load i64, i64* %8, align 8
  %221 = call i32 @setup_tsb_params(%struct.mm_struct* %218, i64 %219, i64 %220)
  %222 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %223 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i64, i64* %10, align 8
  %226 = call i32 @spin_unlock_irqrestore(i32* %224, i64 %225)
  %227 = load %struct.tsb*, %struct.tsb** %11, align 8
  %228 = icmp ne %struct.tsb* %227, null
  br i1 %228, label %229, label %242

229:                                              ; preds = %209
  %230 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %231 = call i32 @tsb_context_switch(%struct.mm_struct* %230)
  %232 = call i32 (...) @preempt_disable()
  %233 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %234 = call i32 @smp_tsb_sync(%struct.mm_struct* %233)
  %235 = call i32 (...) @preempt_enable()
  %236 = load i32*, i32** @tsb_caches, align 8
  %237 = load i64, i64* %14, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.tsb*, %struct.tsb** %11, align 8
  %241 = call i32 @kmem_cache_free(i32 %239, %struct.tsb* %240)
  br label %242

242:                                              ; preds = %108, %164, %229, %209
  ret void
}

declare dso_local i64 @tsb_size_to_rss_limit(i64) #1

declare dso_local %struct.tsb* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tsb_init(%struct.tsb*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.tsb*) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local void @copy_tsb(i64, i64, i64, i64) #1

declare dso_local i32 @setup_tsb_params(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @tsb_context_switch(%struct.mm_struct*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @smp_tsb_sync(%struct.mm_struct*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
