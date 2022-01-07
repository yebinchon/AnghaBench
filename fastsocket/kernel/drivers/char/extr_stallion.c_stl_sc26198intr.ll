; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlpanel = type { %struct.stlport** }
%struct.stlport = type { i32 }

@brd_lock = common dso_local global i32 0, align 4
@XP_IACK = common dso_local global i64 0, align 8
@IVR_CHANMASK = common dso_local global i32 0, align 4
@IVR_RXDATA = common dso_local global i32 0, align 4
@IVR_TXDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlpanel*, i32)* @stl_sc26198intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198intr(%struct.stlpanel* %0, i32 %1) #0 {
  %3 = alloca %struct.stlpanel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stlport*, align 8
  %6 = alloca i32, align 4
  store %struct.stlpanel* %0, %struct.stlpanel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @spin_lock(i32* @brd_lock)
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %8, 1
  %10 = call i32 @outb(i32 0, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* @XP_IACK, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inb(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %17 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %16, i32 0, i32 0
  %18 = load %struct.stlport**, %struct.stlport*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @IVR_CHANMASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 4
  %24 = shl i32 %23, 1
  %25 = add i32 %21, %24
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.stlport*, %struct.stlport** %18, i64 %26
  %28 = load %struct.stlport*, %struct.stlport** %27, align 8
  store %struct.stlport* %28, %struct.stlport** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IVR_RXDATA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.stlport*, %struct.stlport** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @stl_sc26198rxisr(%struct.stlport* %34, i32 %35)
  br label %50

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @IVR_TXDATA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.stlport*, %struct.stlport** %5, align 8
  %44 = call i32 @stl_sc26198txisr(%struct.stlport* %43)
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.stlport*, %struct.stlport** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @stl_sc26198otherisr(%struct.stlport* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %49, %33
  %51 = call i32 @spin_unlock(i32* @brd_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @stl_sc26198rxisr(%struct.stlport*, i32) #1

declare dso_local i32 @stl_sc26198txisr(%struct.stlport*) #1

declare dso_local i32 @stl_sc26198otherisr(%struct.stlport*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
