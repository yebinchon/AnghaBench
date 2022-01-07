; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_resource.c_pnp_register_irq_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_resource.c_pnp_register_irq_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pnp_option = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pnp_irq }
%struct.pnp_irq = type { i8, %struct.TYPE_5__ }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnp_register_irq_resource(%struct.pnp_dev* %0, i32 %1, %struct.TYPE_5__* %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pnp_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.pnp_option*, align 8
  %11 = alloca %struct.pnp_irq*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i8 %3, i8* %9, align 1
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %13 = load i32, i32* @IORESOURCE_IRQ, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.pnp_option* @pnp_build_option(%struct.pnp_dev* %12, i32 %13, i32 %14)
  store %struct.pnp_option* %15, %struct.pnp_option** %10, align 8
  %16 = load %struct.pnp_option*, %struct.pnp_option** %10, align 8
  %17 = icmp ne %struct.pnp_option* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %36

21:                                               ; preds = %4
  %22 = load %struct.pnp_option*, %struct.pnp_option** %10, align 8
  %23 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.pnp_irq* %24, %struct.pnp_irq** %11, align 8
  %25 = load %struct.pnp_irq*, %struct.pnp_irq** %11, align 8
  %26 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = bitcast %struct.TYPE_5__* %26 to i8*
  %29 = bitcast %struct.TYPE_5__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load i8, i8* %9, align 1
  %31 = load %struct.pnp_irq*, %struct.pnp_irq** %11, align 8
  %32 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %31, i32 0, i32 0
  store i8 %30, i8* %32, align 4
  %33 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %34 = load %struct.pnp_option*, %struct.pnp_option** %10, align 8
  %35 = call i32 @dbg_pnp_show_option(%struct.pnp_dev* %33, %struct.pnp_option* %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %21, %18
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.pnp_option* @pnp_build_option(%struct.pnp_dev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dbg_pnp_show_option(%struct.pnp_dev*, %struct.pnp_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
