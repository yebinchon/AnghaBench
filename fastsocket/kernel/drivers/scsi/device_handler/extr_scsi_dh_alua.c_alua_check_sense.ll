; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_check_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_check_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@ADD_TO_MLQUEUE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@SCSI_RETURN_NOT_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* @alua_check_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_check_sense(%struct.scsi_device* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_sense_hdr*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %5, align 8
  %6 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %7 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %131 [
    i32 129, label %9
    i32 128, label %58
  ]

9:                                                ; preds = %2
  %10 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %20, i32* %3, align 4
  br label %133

21:                                               ; preds = %14, %9
  %22 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %28 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 11
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @SUCCESS, align 4
  store i32 %32, i32* %3, align 4
  br label %133

33:                                               ; preds = %26, %21
  %34 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 12
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %133

45:                                               ; preds = %38, %33
  %46 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %47 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 18
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %133

57:                                               ; preds = %50, %45
  br label %131

58:                                               ; preds = %2
  %59 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %60 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 41
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %69, i32* %3, align 4
  br label %133

70:                                               ; preds = %63, %58
  %71 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %72 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 42
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %77 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %81, i32* %3, align 4
  br label %133

82:                                               ; preds = %75, %70
  %83 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %84 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 42
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %89 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 6
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %93, i32* %3, align 4
  br label %133

94:                                               ; preds = %87, %82
  %95 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %96 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 42
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %101 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 7
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %105, i32* %3, align 4
  br label %133

106:                                              ; preds = %99, %94
  %107 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %108 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 63
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %113 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 3
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %117, i32* %3, align 4
  br label %133

118:                                              ; preds = %111, %106
  %119 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %120 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 63
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %125 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 14
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %129, i32* %3, align 4
  br label %133

130:                                              ; preds = %123, %118
  br label %131

131:                                              ; preds = %2, %130, %57
  %132 = load i32, i32* @SCSI_RETURN_NOT_HANDLED, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %128, %116, %104, %92, %80, %68, %55, %43, %31, %19
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
