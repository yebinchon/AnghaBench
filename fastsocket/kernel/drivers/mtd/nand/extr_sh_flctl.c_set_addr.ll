; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_set_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i64, i64 }

@ADRCNT2_E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_addr(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_flctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %10)
  store %struct.sh_flctl* %11, %struct.sh_flctl** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %8, align 4
  br label %73

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %72

19:                                               ; preds = %16
  %20 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %21 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 4095
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 16
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = shl i32 %34, 24
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %39 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ADRCNT2_E, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %24
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 255
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %49 = call i32 @FLADR2(%struct.sh_flctl* %48)
  %50 = call i32 @writel(i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %43, %24
  br label %71

52:                                               ; preds = %19
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 255
  %56 = shl i32 %55, 8
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = shl i32 %67, 24
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %52, %51
  br label %72

72:                                               ; preds = %71, %16
  br label %73

73:                                               ; preds = %72, %14
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %76 = call i32 @FLADR(%struct.sh_flctl* %75)
  %77 = call i32 @writel(i32 %74, i32 %76)
  ret void
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @FLADR2(%struct.sh_flctl*) #1

declare dso_local i32 @FLADR(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
