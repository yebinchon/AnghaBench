; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_htirq.c_write_ht_irq_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_htirq.c_write_ht_irq_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht_irq_msg = type { i32, i32 }
%struct.ht_irq_cfg = type { %struct.ht_irq_msg, i32, i32 (i32, i32, %struct.ht_irq_msg*)*, i64, i64 }

@ht_irq_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_ht_irq_msg(i32 %0, %struct.ht_irq_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ht_irq_msg*, align 8
  %5 = alloca %struct.ht_irq_cfg*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ht_irq_msg* %1, %struct.ht_irq_msg** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ht_irq_cfg* @get_irq_data(i32 %7)
  store %struct.ht_irq_cfg* %8, %struct.ht_irq_cfg** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @ht_irq_lock, i64 %9)
  %11 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.ht_irq_msg, %struct.ht_irq_msg* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ht_irq_msg*, %struct.ht_irq_msg** %4, align 8
  %16 = getelementptr inbounds %struct.ht_irq_msg, %struct.ht_irq_msg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %24 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 2
  %27 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %28 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pci_write_config_byte(i32 %22, i64 %26, i64 %29)
  %31 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %32 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 4
  %38 = load %struct.ht_irq_msg*, %struct.ht_irq_msg** %4, align 8
  %39 = getelementptr inbounds %struct.ht_irq_msg, %struct.ht_irq_msg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_write_config_dword(i32 %33, i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %19, %2
  %43 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %44 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.ht_irq_msg, %struct.ht_irq_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ht_irq_msg*, %struct.ht_irq_msg** %4, align 8
  %48 = getelementptr inbounds %struct.ht_irq_msg, %struct.ht_irq_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %42
  %52 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %53 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %56 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 2
  %59 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %60 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i32 @pci_write_config_byte(i32 %54, i64 %58, i64 %62)
  %64 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %65 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %68 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 4
  %71 = load %struct.ht_irq_msg*, %struct.ht_irq_msg** %4, align 8
  %72 = getelementptr inbounds %struct.ht_irq_msg, %struct.ht_irq_msg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pci_write_config_dword(i32 %66, i64 %70, i32 %73)
  br label %75

75:                                               ; preds = %51, %42
  %76 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %77 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %76, i32 0, i32 2
  %78 = load i32 (i32, i32, %struct.ht_irq_msg*)*, i32 (i32, i32, %struct.ht_irq_msg*)** %77, align 8
  %79 = icmp ne i32 (i32, i32, %struct.ht_irq_msg*)* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %82 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %81, i32 0, i32 2
  %83 = load i32 (i32, i32, %struct.ht_irq_msg*)*, i32 (i32, i32, %struct.ht_irq_msg*)** %82, align 8
  %84 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %85 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.ht_irq_msg*, %struct.ht_irq_msg** %4, align 8
  %89 = call i32 %83(i32 %86, i32 %87, %struct.ht_irq_msg* %88)
  br label %90

90:                                               ; preds = %80, %75
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* @ht_irq_lock, i64 %91)
  %93 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %5, align 8
  %94 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %93, i32 0, i32 0
  %95 = load %struct.ht_irq_msg*, %struct.ht_irq_msg** %4, align 8
  %96 = bitcast %struct.ht_irq_msg* %94 to i8*
  %97 = bitcast %struct.ht_irq_msg* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 4 %97, i64 8, i1 false)
  ret void
}

declare dso_local %struct.ht_irq_cfg* @get_irq_data(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_write_config_byte(i32, i64, i64) #1

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
