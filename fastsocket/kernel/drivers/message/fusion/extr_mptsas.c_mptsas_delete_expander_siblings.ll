; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_delete_expander_siblings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_delete_expander_siblings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptsas_portinfo = type { i32, %struct.mptsas_phyinfo* }
%struct.mptsas_phyinfo = type { i32 }
%struct.sas_rphy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@SAS_END_DEVICE = common dso_local global i64 0, align 8
@MPI_SAS_DEVICE_INFO_EDGE_EXPANDER = common dso_local global i64 0, align 8
@MPI_SAS_DEVICE_INFO_FANOUT_EXPANDER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mptsas_portinfo*, %struct.mptsas_portinfo*)* @mptsas_delete_expander_siblings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptsas_delete_expander_siblings(i32* %0, %struct.mptsas_portinfo* %1, %struct.mptsas_portinfo* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mptsas_portinfo*, align 8
  %6 = alloca %struct.mptsas_portinfo*, align 8
  %7 = alloca %struct.mptsas_phyinfo*, align 8
  %8 = alloca %struct.mptsas_portinfo*, align 8
  %9 = alloca %struct.sas_rphy*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.mptsas_portinfo* %1, %struct.mptsas_portinfo** %5, align 8
  store %struct.mptsas_portinfo* %2, %struct.mptsas_portinfo** %6, align 8
  %11 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %12 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %11, i32 0, i32 1
  %13 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %12, align 8
  store %struct.mptsas_phyinfo* %13, %struct.mptsas_phyinfo** %7, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %38, %3
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %17 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %22 = call %struct.sas_rphy* @mptsas_get_rphy(%struct.mptsas_phyinfo* %21)
  store %struct.sas_rphy* %22, %struct.sas_rphy** %9, align 8
  %23 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %24 = icmp ne %struct.sas_rphy* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %20
  %27 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %28 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SAS_END_DEVICE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %36 = call i32 @mptsas_del_end_device(i32* %34, %struct.mptsas_phyinfo* %35)
  br label %37

37:                                               ; preds = %33, %26
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %42 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %41, i32 1
  store %struct.mptsas_phyinfo* %42, %struct.mptsas_phyinfo** %7, align 8
  br label %14

43:                                               ; preds = %14
  %44 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %45 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %44, i32 0, i32 1
  %46 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %45, align 8
  store %struct.mptsas_phyinfo* %46, %struct.mptsas_phyinfo** %7, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %93, %43
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %50 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %98

53:                                               ; preds = %47
  %54 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %55 = call %struct.sas_rphy* @mptsas_get_rphy(%struct.mptsas_phyinfo* %54)
  store %struct.sas_rphy* %55, %struct.sas_rphy** %9, align 8
  %56 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %57 = icmp ne %struct.sas_rphy* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %93

59:                                               ; preds = %53
  %60 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %61 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MPI_SAS_DEVICE_INFO_EDGE_EXPANDER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %68 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MPI_SAS_DEVICE_INFO_FANOUT_EXPANDER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %66, %59
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %76 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.mptsas_portinfo* @mptsas_find_portinfo_by_sas_address(i32* %74, i32 %78)
  store %struct.mptsas_portinfo* %79, %struct.mptsas_portinfo** %8, align 8
  %80 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %8, align 8
  %81 = icmp ne %struct.mptsas_portinfo* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %93

83:                                               ; preds = %73
  %84 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %8, align 8
  %85 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %86 = icmp eq %struct.mptsas_portinfo* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %93

88:                                               ; preds = %83
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %8, align 8
  %91 = call i32 @mptsas_expander_delete(i32* %89, %struct.mptsas_portinfo* %90, i32 1)
  br label %92

92:                                               ; preds = %88, %66
  br label %93

93:                                               ; preds = %92, %87, %82, %58
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %97 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %96, i32 1
  store %struct.mptsas_phyinfo* %97, %struct.mptsas_phyinfo** %7, align 8
  br label %47

98:                                               ; preds = %47
  ret void
}

declare dso_local %struct.sas_rphy* @mptsas_get_rphy(%struct.mptsas_phyinfo*) #1

declare dso_local i32 @mptsas_del_end_device(i32*, %struct.mptsas_phyinfo*) #1

declare dso_local %struct.mptsas_portinfo* @mptsas_find_portinfo_by_sas_address(i32*, i32) #1

declare dso_local i32 @mptsas_expander_delete(i32*, %struct.mptsas_portinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
