; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_htirq.c_unmask_ht_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_htirq.c_unmask_ht_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht_irq_cfg = type { %struct.ht_irq_msg }
%struct.ht_irq_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmask_ht_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ht_irq_cfg*, align 8
  %4 = alloca %struct.ht_irq_msg, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ht_irq_cfg* @get_irq_data(i32 %5)
  store %struct.ht_irq_cfg* %6, %struct.ht_irq_cfg** %3, align 8
  %7 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %3, align 8
  %8 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %7, i32 0, i32 0
  %9 = bitcast %struct.ht_irq_msg* %4 to i8*
  %10 = bitcast %struct.ht_irq_msg* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = getelementptr inbounds %struct.ht_irq_msg, %struct.ht_irq_msg* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -2
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @write_ht_irq_msg(i32 %14, %struct.ht_irq_msg* %4)
  ret void
}

declare dso_local %struct.ht_irq_cfg* @get_irq_data(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write_ht_irq_msg(i32, %struct.ht_irq_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
