; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_force_horkage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_force_horkage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_force_ent = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ata_device = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ata_force_tbl_size = common dso_local global i32 0, align 4
@ata_force_tbl = common dso_local global %struct.ata_force_ent* null, align 8
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"FORCE: horkage modified (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @ata_force_horkage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_force_horkage(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_force_ent*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %7 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %8 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i64 @ata_is_host_link(%struct.TYPE_6__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 15
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %117, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ata_force_tbl_size, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %120

30:                                               ; preds = %26
  %31 = load %struct.ata_force_ent*, %struct.ata_force_ent** @ata_force_tbl, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %31, i64 %33
  store %struct.ata_force_ent* %34, %struct.ata_force_ent** %6, align 8
  %35 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %36 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %41 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %44 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %42, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %117

52:                                               ; preds = %39, %30
  %53 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %54 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %59 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %65 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %117

70:                                               ; preds = %63, %57, %52
  %71 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %72 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %76 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %74, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %70
  %82 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %83 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %86 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %84, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %81
  br label %117

92:                                               ; preds = %81, %70
  %93 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %94 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %98 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %102 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %107 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %111 = load i32, i32* @KERN_NOTICE, align 4
  %112 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %113 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ata_dev_printk(%struct.ata_device* %110, i32 %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %92, %91, %69, %51
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %26

120:                                              ; preds = %26
  ret void
}

declare dso_local i64 @ata_is_host_link(%struct.TYPE_6__*) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
