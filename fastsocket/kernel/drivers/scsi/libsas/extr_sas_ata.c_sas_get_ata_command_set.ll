; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_get_ata_command_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_get_ata_command_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8* }
%struct.dev_to_host_fis = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SATA_PENDING = common dso_local global i64 0, align 8
@ATA_COMMAND_SET = common dso_local global i8* null, align 8
@ATAPI_COMMAND_SET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*)* @sas_get_ata_command_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_get_ata_command_set(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.dev_to_host_fis*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %4 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %5 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.dev_to_host_fis*
  store %struct.dev_to_host_fis* %7, %struct.dev_to_host_fis** %3, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SATA_PENDING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %159

14:                                               ; preds = %1
  %15 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %16 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %21 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %26 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %31 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %36 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %34, %29, %24, %19, %14
  %40 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %41 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %46 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %51 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 206
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %56 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 170
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %61 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, -17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59, %34
  %66 = load i8*, i8** @ATA_COMMAND_SET, align 8
  %67 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %68 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  br label %159

70:                                               ; preds = %59, %54, %49, %44, %39
  %71 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %72 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %101

75:                                               ; preds = %70
  %76 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %77 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %101

80:                                               ; preds = %75
  %81 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %82 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 20
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %87 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 235
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %92 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -17
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i8*, i8** @ATAPI_COMMAND_SET, align 8
  %98 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %99 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  br label %158

101:                                              ; preds = %90, %85, %80, %75, %70
  %102 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %103 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %126

106:                                              ; preds = %101
  %107 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %108 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %113 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 60
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %118 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 195
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %123 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %152, label %126

126:                                              ; preds = %121, %116, %111, %106, %101
  %127 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %128 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %157

131:                                              ; preds = %126
  %132 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %133 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %157

136:                                              ; preds = %131
  %137 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %138 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 105
  br i1 %140, label %141, label %157

141:                                              ; preds = %136
  %142 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %143 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 150
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %3, align 8
  %148 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, -17
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %146, %121
  %153 = load i8*, i8** @ATAPI_COMMAND_SET, align 8
  %154 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %155 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  store i8* %153, i8** %156, align 8
  br label %157

157:                                              ; preds = %152, %146, %141, %136, %131, %126
  br label %158

158:                                              ; preds = %157, %96
  br label %159

159:                                              ; preds = %13, %158, %65
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
