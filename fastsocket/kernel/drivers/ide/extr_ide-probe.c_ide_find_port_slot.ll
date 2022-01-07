; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-probe.c_ide_find_port_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-probe.c_ide_find_port_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_port_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@IDE_HFLAG_NON_BOOTABLE = common dso_local global i32 0, align 4
@IDE_HFLAG_QD_2ND_PORT = common dso_local global i32 0, align 4
@ide_cfg_mtx = common dso_local global i32 0, align 4
@ide_indexes = common dso_local global i32 0, align 4
@MAX_HWIFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ide_port_info*)* @ide_find_port_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_find_port_slot(%struct.ide_port_info* %0) #0 {
  %2 = alloca %struct.ide_port_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ide_port_info* %0, %struct.ide_port_info** %2, align 8
  %6 = load i32, i32* @ENOENT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ide_port_info*, %struct.ide_port_info** %2, align 8
  %9 = icmp ne %struct.ide_port_info* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.ide_port_info*, %struct.ide_port_info** %2, align 8
  %12 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IDE_HFLAG_NON_BOOTABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i1 [ false, %1 ], [ %16, %10 ]
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ide_port_info*, %struct.ide_port_info** %2, align 8
  %22 = icmp ne %struct.ide_port_info* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.ide_port_info*, %struct.ide_port_info** %2, align 8
  %25 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IDE_HFLAG_QD_2ND_PORT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %17
  %31 = phi i1 [ false, %17 ], [ %29, %23 ]
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %5, align 4
  %34 = call i32 @mutex_lock(i32* @ide_cfg_mtx)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load i32, i32* @ide_indexes, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MAX_HWIFS, align 4
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, i32* @ide_indexes, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @ffz(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %37
  br label %71

51:                                               ; preds = %30
  %52 = load i32, i32* @ide_indexes, align 4
  %53 = or i32 %52, 3
  %54 = load i32, i32* @MAX_HWIFS, align 4
  %55 = shl i32 1, %54
  %56 = sub nsw i32 %55, 1
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @ide_indexes, align 4
  %60 = or i32 %59, 3
  %61 = call i32 @ffz(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %70

62:                                               ; preds = %51
  %63 = load i32, i32* @ide_indexes, align 4
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 3
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @ide_indexes, align 4
  %68 = call i32 @ffz(i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %58
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i32, i32* %3, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = shl i32 1, %75
  %77 = load i32, i32* @ide_indexes, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* @ide_indexes, align 4
  br label %79

79:                                               ; preds = %74, %71
  %80 = call i32 @mutex_unlock(i32* @ide_cfg_mtx)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
