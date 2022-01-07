; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_mci_bind_devs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_mci_bind_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { %struct.pci_dev**, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.sbridge_dev = type { i32, i32, %struct.pci_dev** }

@.str = private unnamed_addr constant [43 x i8] c"Associated PCI %02x.%02d.%d with dev = %p\0A\00", align 1
@NUM_CHANNELS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Some needed devices are missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Device %d, function %d is out of the expected range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.sbridge_dev*)* @mci_bind_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mci_bind_devs(%struct.mem_ctl_info* %0, %struct.sbridge_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.sbridge_dev*, align 8
  %6 = alloca %struct.sbridge_pvt*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.sbridge_dev* %1, %struct.sbridge_dev** %5, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 0
  %13 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %12, align 8
  store %struct.sbridge_pvt* %13, %struct.sbridge_pvt** %6, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %113, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.sbridge_dev*, %struct.sbridge_dev** %5, align 8
  %17 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %116

20:                                               ; preds = %14
  %21 = load %struct.sbridge_dev*, %struct.sbridge_dev** %5, align 8
  %22 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %21, i32 0, i32 2
  %23 = load %struct.pci_dev**, %struct.pci_dev*** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %23, i64 %25
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %7, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = icmp ne %struct.pci_dev* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %113

31:                                               ; preds = %20
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PCI_SLOT(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PCI_FUNC(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %98 [
    i32 12, label %41
    i32 13, label %53
    i32 14, label %61
    i32 15, label %69
    i32 17, label %90
  ]

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %51 [
    i32 6, label %43
    i32 7, label %47
  ]

43:                                               ; preds = %41
  %44 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %45 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %46 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %45, i32 0, i32 5
  store %struct.pci_dev* %44, %struct.pci_dev** %46, align 8
  br label %52

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %49 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %50 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %49, i32 0, i32 4
  store %struct.pci_dev* %48, %struct.pci_dev** %50, align 8
  br label %52

51:                                               ; preds = %41
  br label %172

52:                                               ; preds = %47, %43
  br label %99

53:                                               ; preds = %31
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %59 [
    i32 6, label %55
  ]

55:                                               ; preds = %53
  %56 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %57 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %58 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %57, i32 0, i32 7
  store %struct.pci_dev* %56, %struct.pci_dev** %58, align 8
  br label %60

59:                                               ; preds = %53
  br label %172

60:                                               ; preds = %55
  br label %99

61:                                               ; preds = %31
  %62 = load i32, i32* %9, align 4
  switch i32 %62, label %67 [
    i32 0, label %63
  ]

63:                                               ; preds = %61
  %64 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %65 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %66 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %65, i32 0, i32 3
  store %struct.pci_dev* %64, %struct.pci_dev** %66, align 8
  br label %68

67:                                               ; preds = %61
  br label %172

68:                                               ; preds = %63
  br label %99

69:                                               ; preds = %31
  %70 = load i32, i32* %9, align 4
  switch i32 %70, label %88 [
    i32 0, label %71
    i32 1, label %75
    i32 2, label %79
    i32 3, label %79
    i32 4, label %79
    i32 5, label %79
  ]

71:                                               ; preds = %69
  %72 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %73 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %74 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %73, i32 0, i32 1
  store %struct.pci_dev* %72, %struct.pci_dev** %74, align 8
  br label %89

75:                                               ; preds = %69
  %76 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %77 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %78 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %77, i32 0, i32 2
  store %struct.pci_dev* %76, %struct.pci_dev** %78, align 8
  br label %89

79:                                               ; preds = %69, %69, %69, %69
  %80 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %81 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %82 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %81, i32 0, i32 0
  %83 = load %struct.pci_dev**, %struct.pci_dev*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %83, i64 %86
  store %struct.pci_dev* %80, %struct.pci_dev** %87, align 8
  br label %89

88:                                               ; preds = %69
  br label %172

89:                                               ; preds = %79, %75, %71
  br label %99

90:                                               ; preds = %31
  %91 = load i32, i32* %9, align 4
  switch i32 %91, label %96 [
    i32 0, label %92
  ]

92:                                               ; preds = %90
  %93 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %94 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %95 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %94, i32 0, i32 6
  store %struct.pci_dev* %93, %struct.pci_dev** %95, align 8
  br label %97

96:                                               ; preds = %90
  br label %172

97:                                               ; preds = %92
  br label %99

98:                                               ; preds = %31
  br label %172

99:                                               ; preds = %97, %89, %68, %60, %52
  %100 = load %struct.sbridge_dev*, %struct.sbridge_dev** %5, align 8
  %101 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @PCI_SLOT(i32 %105)
  %107 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @PCI_FUNC(i32 %109)
  %111 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %112 = call i32 @debugf0(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %106, i32 %110, %struct.pci_dev* %111)
  br label %113

113:                                              ; preds = %99, %30
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %14

116:                                              ; preds = %14
  %117 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %118 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %117, i32 0, i32 5
  %119 = load %struct.pci_dev*, %struct.pci_dev** %118, align 8
  %120 = icmp ne %struct.pci_dev* %119, null
  br i1 %120, label %121, label %146

121:                                              ; preds = %116
  %122 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %123 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %122, i32 0, i32 4
  %124 = load %struct.pci_dev*, %struct.pci_dev** %123, align 8
  %125 = icmp ne %struct.pci_dev* %124, null
  br i1 %125, label %126, label %146

126:                                              ; preds = %121
  %127 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %128 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %127, i32 0, i32 3
  %129 = load %struct.pci_dev*, %struct.pci_dev** %128, align 8
  %130 = icmp ne %struct.pci_dev* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %133 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %132, i32 0, i32 0
  %134 = load %struct.pci_dev**, %struct.pci_dev*** %133, align 8
  %135 = icmp ne %struct.pci_dev** %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %138 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %137, i32 0, i32 2
  %139 = load %struct.pci_dev*, %struct.pci_dev** %138, align 8
  %140 = icmp ne %struct.pci_dev* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %143 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %142, i32 0, i32 1
  %144 = load %struct.pci_dev*, %struct.pci_dev** %143, align 8
  %145 = icmp ne %struct.pci_dev* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %141, %136, %131, %126, %121, %116
  br label %167

147:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %163, %147
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @NUM_CHANNELS, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %148
  %153 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %154 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %153, i32 0, i32 0
  %155 = load %struct.pci_dev**, %struct.pci_dev*** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %155, i64 %157
  %159 = load %struct.pci_dev*, %struct.pci_dev** %158, align 8
  %160 = icmp ne %struct.pci_dev* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %152
  br label %167

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %148

166:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %179

167:                                              ; preds = %161, %146
  %168 = load i32, i32* @KERN_ERR, align 4
  %169 = call i32 (i32, i8*, ...) @sbridge_printk(i32 %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %170 = load i32, i32* @ENODEV, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %179

172:                                              ; preds = %98, %96, %88, %67, %59, %51
  %173 = load i32, i32* @KERN_ERR, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 (i32, i8*, ...) @sbridge_printk(i32 %173, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %174, i32 %175)
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %172, %167, %166
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @debugf0(i8*, i32, i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @sbridge_printk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
