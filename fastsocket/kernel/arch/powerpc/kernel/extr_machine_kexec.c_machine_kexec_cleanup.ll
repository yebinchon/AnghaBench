; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_machine_kexec.c_machine_kexec_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_machine_kexec.c_machine_kexec_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kimage*)* }
%struct.kimage = type { i32 }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_kexec_cleanup(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %3 = load i32 (%struct.kimage*)*, i32 (%struct.kimage*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %4 = icmp ne i32 (%struct.kimage*)* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32 (%struct.kimage*)*, i32 (%struct.kimage*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %7 = load %struct.kimage*, %struct.kimage** %2, align 8
  %8 = call i32 %6(%struct.kimage* %7)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
