; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_suni.c_suni_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_suni.c_suni_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32*, i32 }
%struct.TYPE_2__ = type { i8, %struct.atm_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MRI = common dso_local global i32 0, align 4
@SUNI_MRI_TYPE = common dso_local global i8 0, align 1
@SUNI_MRI_TYPE_SHIFT = common dso_local global i8 0, align 1
@SUNI_MRI_RESET = common dso_local global i8 0, align 1
@MT = common dso_local global i32 0, align 4
@SUNI_MT_DS27_53 = common dso_local global i8 0, align 1
@SUNI_TACP_IUCHP_CLP = common dso_local global i32 0, align 4
@TACP_IUCHP = common dso_local global i32 0, align 4
@SUNI_IDLE_PATTERN = common dso_local global i8 0, align 1
@TACP_IUCPOP = common dso_local global i32 0, align 4
@suni_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @suni_init(%struct.atm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca i8, align 1
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @kmalloc(i32 4, i32 %5)
  %7 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %8 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = icmp ne i32 %6, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %15 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %16 = call %struct.TYPE_2__* @PRIV(%struct.atm_dev* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.atm_dev* %14, %struct.atm_dev** %17, align 8
  %18 = load i32, i32* @MRI, align 4
  %19 = call zeroext i8 @GET(i32 %18)
  store i8 %19, i8* %4, align 1
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @SUNI_MRI_TYPE, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = load i8, i8* @SUNI_MRI_TYPE_SHIFT, align 1
  %26 = zext i8 %25 to i32
  %27 = ashr i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %30 = call %struct.TYPE_2__* @PRIV(%struct.atm_dev* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8 %28, i8* %31, align 8
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @SUNI_MRI_RESET, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  %37 = trunc i32 %36 to i8
  %38 = load i32, i32* @MRI, align 4
  %39 = call i32 @PUT(i8 zeroext %37, i32 %38)
  %40 = load i8, i8* %4, align 1
  %41 = load i32, i32* @MRI, align 4
  %42 = call i32 @PUT(i8 zeroext %40, i32 %41)
  %43 = load i32, i32* @MT, align 4
  %44 = call zeroext i8 @GET(i32 %43)
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @SUNI_MT_DS27_53, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = trunc i32 %48 to i8
  %50 = load i32, i32* @MT, align 4
  %51 = call i32 @PUT(i8 zeroext %49, i32 %50)
  %52 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %53 = call i32 @set_sonet(%struct.atm_dev* %52)
  %54 = load i32, i32* @SUNI_TACP_IUCHP_CLP, align 4
  %55 = load i32, i32* @SUNI_TACP_IUCHP_CLP, align 4
  %56 = load i32, i32* @TACP_IUCHP, align 4
  %57 = call i32 @REG_CHANGE(i32 %54, i32 0, i32 %55, i32 %56)
  %58 = load i8, i8* @SUNI_IDLE_PATTERN, align 1
  %59 = load i32, i32* @TACP_IUCPOP, align 4
  %60 = call i32 @PUT(i8 zeroext %58, i32 %59)
  %61 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %62 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %61, i32 0, i32 0
  store i32* @suni_ops, i32** %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %13, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @PRIV(%struct.atm_dev*) #1

declare dso_local zeroext i8 @GET(i32) #1

declare dso_local i32 @PUT(i8 zeroext, i32) #1

declare dso_local i32 @set_sonet(%struct.atm_dev*) #1

declare dso_local i32 @REG_CHANGE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
