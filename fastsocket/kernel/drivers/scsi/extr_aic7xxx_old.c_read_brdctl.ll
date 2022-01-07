; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_read_brdctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_read_brdctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32, i32, i32 }

@AHC_ULTRA2 = common dso_local global i32 0, align 4
@BRDRW_ULTRA2 = common dso_local global i8 0, align 1
@BRDCTL = common dso_local global i32 0, align 4
@BRDRW = common dso_local global i8 0, align 1
@AHC_CHIPID_MASK = common dso_local global i32 0, align 4
@AHC_AIC7895 = common dso_local global i32 0, align 4
@AHC_CHNLB = common dso_local global i32 0, align 4
@BRDCS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.aic7xxx_host*)* @read_brdctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @read_brdctl(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.aic7xxx_host*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %3, align 8
  %6 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %7 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %6)
  %8 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %9 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AHC_ULTRA2, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i8, i8* @BRDRW_ULTRA2, align 1
  store i8 %15, i8* %4, align 1
  %16 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %17 = load i8, i8* %4, align 1
  %18 = load i32, i32* @BRDCTL, align 4
  %19 = call i32 @aic_outb(%struct.aic7xxx_host* %16, i8 zeroext %17, i32 %18)
  %20 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %21 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %20)
  %22 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %23 = load i32, i32* @BRDCTL, align 4
  %24 = call zeroext i8 @aic_inb(%struct.aic7xxx_host* %22, i32 %23)
  store i8 %24, i8* %5, align 1
  %25 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %26 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %25)
  %27 = load i8, i8* %5, align 1
  store i8 %27, i8* %2, align 1
  br label %69

28:                                               ; preds = %1
  %29 = load i8, i8* @BRDRW, align 1
  store i8 %29, i8* %4, align 1
  %30 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %31 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AHC_CHIPID_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @AHC_AIC7895, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %39 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AHC_CHNLB, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37, %28
  %45 = load i8, i8* @BRDCS, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* %4, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %4, align 1
  br label %51

51:                                               ; preds = %44, %37
  %52 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %53 = load i8, i8* %4, align 1
  %54 = load i32, i32* @BRDCTL, align 4
  %55 = call i32 @aic_outb(%struct.aic7xxx_host* %52, i8 zeroext %53, i32 %54)
  %56 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %57 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %56)
  %58 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %59 = load i32, i32* @BRDCTL, align 4
  %60 = call zeroext i8 @aic_inb(%struct.aic7xxx_host* %58, i32 %59)
  store i8 %60, i8* %5, align 1
  %61 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %62 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %61)
  %63 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %64 = load i32, i32* @BRDCTL, align 4
  %65 = call i32 @aic_outb(%struct.aic7xxx_host* %63, i8 zeroext 0, i32 %64)
  %66 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %67 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %66)
  %68 = load i8, i8* %5, align 1
  store i8 %68, i8* %2, align 1
  br label %69

69:                                               ; preds = %51, %14
  %70 = load i8, i8* %2, align 1
  ret i8 %70
}

declare dso_local i32 @CLOCK_PULSE(%struct.aic7xxx_host*) #1

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @aic_inb(%struct.aic7xxx_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
