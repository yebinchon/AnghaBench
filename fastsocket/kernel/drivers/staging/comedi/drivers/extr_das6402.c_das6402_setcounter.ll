; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das6402.c_das6402_setcounter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das6402.c_das6402_setcounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@M0 = common dso_local global i32 0, align 4
@C0 = common dso_local global i32 0, align 4
@RWLH = common dso_local global i32 0, align 4
@M2 = common dso_local global i32 0, align 4
@C1 = common dso_local global i32 0, align 4
@C2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @das6402_setcounter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das6402_setcounter(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load i32, i32* @M0, align 4
  %6 = load i32, i32* @C0, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @RWLH, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 15
  %15 = call i32 @outb_p(i32 %10, i64 %14)
  store i16 2000, i16* %4, align 2
  %16 = load i16, i16* %4, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 255, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 12
  %24 = call i32 @outb_p(i32 %19, i64 %23)
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = ashr i32 %26, 8
  %28 = and i32 255, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 12
  %34 = call i32 @outb_p(i32 %29, i64 %33)
  %35 = load i32, i32* @M2, align 4
  %36 = load i32, i32* @C1, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RWLH, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 15
  %45 = call i32 @outb_p(i32 %40, i64 %44)
  store i16 10, i16* %4, align 2
  %46 = load i16, i16* %4, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 255, %47
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 13
  %54 = call i32 @outb_p(i32 %49, i64 %53)
  %55 = load i16, i16* %4, align 2
  %56 = zext i16 %55 to i32
  %57 = ashr i32 %56, 8
  %58 = and i32 255, %57
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 13
  %64 = call i32 @outb_p(i32 %59, i64 %63)
  %65 = load i32, i32* @M2, align 4
  %66 = load i32, i32* @C2, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @RWLH, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 15
  %75 = call i32 @outb_p(i32 %70, i64 %74)
  store i16 1000, i16* %4, align 2
  %76 = load i16, i16* %4, align 2
  %77 = zext i16 %76 to i32
  %78 = and i32 255, %77
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 14
  %84 = call i32 @outb_p(i32 %79, i64 %83)
  %85 = load i16, i16* %4, align 2
  %86 = zext i16 %85 to i32
  %87 = ashr i32 %86, 8
  %88 = and i32 255, %87
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 14
  %94 = call i32 @outb_p(i32 %89, i64 %93)
  ret void
}

declare dso_local i32 @outb_p(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
