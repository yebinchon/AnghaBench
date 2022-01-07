; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_quirks.c_quirk_awe32_add_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_quirks.c_quirk_awe32_add_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_option = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"couldn't add ioport region to option set %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"added ioport region %#llx-%#llx to set %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, %struct.pnp_option*, i32)* @quirk_awe32_add_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_awe32_add_ports(%struct.pnp_dev* %0, %struct.pnp_option* %1, i32 %2) #0 {
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_option*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_option* %1, %struct.pnp_option** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pnp_option* @kmalloc(i32 24, i32 %8)
  store %struct.pnp_option* %9, %struct.pnp_option** %7, align 8
  %10 = load %struct.pnp_option*, %struct.pnp_option** %7, align 8
  %11 = icmp ne %struct.pnp_option* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 0
  %15 = load %struct.pnp_option*, %struct.pnp_option** %5, align 8
  %16 = call i32 @pnp_option_set(%struct.pnp_option* %15)
  %17 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.pnp_option*, %struct.pnp_option** %7, align 8
  %20 = load %struct.pnp_option*, %struct.pnp_option** %5, align 8
  %21 = bitcast %struct.pnp_option* %19 to i8*
  %22 = bitcast %struct.pnp_option* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = load %struct.pnp_option*, %struct.pnp_option** %7, align 8
  %26 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %24
  store i64 %30, i64* %28, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.pnp_option*, %struct.pnp_option** %7, align 8
  %34 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %32
  store i64 %38, i64* %36, align 8
  %39 = load %struct.pnp_option*, %struct.pnp_option** %7, align 8
  %40 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %39, i32 0, i32 1
  %41 = load %struct.pnp_option*, %struct.pnp_option** %5, align 8
  %42 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %41, i32 0, i32 1
  %43 = call i32 @list_add(i32* %40, i32* %42)
  %44 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %44, i32 0, i32 0
  %46 = load %struct.pnp_option*, %struct.pnp_option** %7, align 8
  %47 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pnp_option*, %struct.pnp_option** %7, align 8
  %52 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.pnp_option*, %struct.pnp_option** %5, align 8
  %57 = call i32 @pnp_option_set(%struct.pnp_option* %56)
  %58 = call i32 @dev_info(i32* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %55, i32 %57)
  br label %59

59:                                               ; preds = %18, %12
  ret void
}

declare dso_local %struct.pnp_option* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pnp_option_set(%struct.pnp_option*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
