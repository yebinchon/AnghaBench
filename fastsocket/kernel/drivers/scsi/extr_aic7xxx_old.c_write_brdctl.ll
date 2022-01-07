; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_write_brdctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_write_brdctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32, i32, i32 }

@AHC_ULTRA2 = common dso_local global i32 0, align 4
@BRDCTL = common dso_local global i32 0, align 4
@BRDSTB_ULTRA2 = common dso_local global i8 0, align 1
@BRDSTB = common dso_local global i8 0, align 1
@AHC_CHIPID_MASK = common dso_local global i32 0, align 4
@AHC_AIC7895 = common dso_local global i32 0, align 4
@AHC_CHNLB = common dso_local global i32 0, align 4
@BRDCS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, i8)* @write_brdctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_brdctl(%struct.aic7xxx_host* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.aic7xxx_host*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %7 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %6)
  %8 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %9 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AHC_ULTRA2, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %2
  %15 = load i8, i8* %4, align 1
  store i8 %15, i8* %5, align 1
  %16 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %17 = load i8, i8* %5, align 1
  %18 = load i32, i32* @BRDCTL, align 4
  %19 = call i32 @aic_outb(%struct.aic7xxx_host* %16, i8 zeroext %17, i32 %18)
  %20 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %21 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %20)
  %22 = load i8, i8* @BRDSTB_ULTRA2, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %5, align 1
  %28 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %29 = load i8, i8* %5, align 1
  %30 = load i32, i32* @BRDCTL, align 4
  %31 = call i32 @aic_outb(%struct.aic7xxx_host* %28, i8 zeroext %29, i32 %30)
  %32 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %33 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %32)
  %34 = load i8, i8* @BRDSTB_ULTRA2, align 1
  %35 = zext i8 %34 to i32
  %36 = xor i32 %35, -1
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, %36
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %5, align 1
  %41 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %42 = load i8, i8* %5, align 1
  %43 = load i32, i32* @BRDCTL, align 4
  %44 = call i32 @aic_outb(%struct.aic7xxx_host* %41, i8 zeroext %42, i32 %43)
  %45 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %46 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %45)
  %47 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %48 = call i32 @read_brdctl(%struct.aic7xxx_host* %47)
  %49 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %50 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %49)
  br label %125

51:                                               ; preds = %2
  %52 = load i8, i8* @BRDSTB, align 1
  store i8 %52, i8* %5, align 1
  %53 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %54 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AHC_CHIPID_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @AHC_AIC7895, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %62 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AHC_CHNLB, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60, %51
  %68 = load i8, i8* @BRDCS, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* %5, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %5, align 1
  br label %74

74:                                               ; preds = %67, %60
  %75 = load i8, i8* @BRDSTB, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @BRDCS, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %76, %78
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %5, align 1
  %81 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %82 = load i8, i8* %5, align 1
  %83 = load i32, i32* @BRDCTL, align 4
  %84 = call i32 @aic_outb(%struct.aic7xxx_host* %81, i8 zeroext %82, i32 %83)
  %85 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %86 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %85)
  %87 = load i8, i8* %4, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, %88
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %5, align 1
  %93 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %94 = load i8, i8* %5, align 1
  %95 = load i32, i32* @BRDCTL, align 4
  %96 = call i32 @aic_outb(%struct.aic7xxx_host* %93, i8 zeroext %94, i32 %95)
  %97 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %98 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %97)
  %99 = load i8, i8* @BRDSTB, align 1
  %100 = zext i8 %99 to i32
  %101 = xor i32 %100, -1
  %102 = load i8, i8* %5, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, %101
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %5, align 1
  %106 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %107 = load i8, i8* %5, align 1
  %108 = load i32, i32* @BRDCTL, align 4
  %109 = call i32 @aic_outb(%struct.aic7xxx_host* %106, i8 zeroext %107, i32 %108)
  %110 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %111 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %110)
  %112 = load i8, i8* @BRDCS, align 1
  %113 = zext i8 %112 to i32
  %114 = xor i32 %113, -1
  %115 = load i8, i8* %5, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, %114
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %5, align 1
  %119 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %120 = load i8, i8* %5, align 1
  %121 = load i32, i32* @BRDCTL, align 4
  %122 = call i32 @aic_outb(%struct.aic7xxx_host* %119, i8 zeroext %120, i32 %121)
  %123 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %124 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %123)
  br label %125

125:                                              ; preds = %74, %14
  ret void
}

declare dso_local i32 @CLOCK_PULSE(%struct.aic7xxx_host*) #1

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i8 zeroext, i32) #1

declare dso_local i32 @read_brdctl(%struct.aic7xxx_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
