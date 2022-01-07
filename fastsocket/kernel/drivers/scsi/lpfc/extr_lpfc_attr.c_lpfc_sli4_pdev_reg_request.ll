; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_sli4_pdev_reg_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_sli4_pdev_reg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32, %struct.pci_dev* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.completion = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@LPFC_EVT_OFFLINE = common dso_local global i32 0, align 4
@LPFC_CTL_PDEV_CTL_OFFSET = common dso_local global i64 0, align 8
@LPFC_FW_DUMP = common dso_local global i64 0, align 8
@LPFC_FW_DUMP_REQUEST = common dso_local global i64 0, align 8
@LPFC_FW_RESET = common dso_local global i64 0, align 8
@LPFC_CTL_PDEV_CTL_FRST = common dso_local global i64 0, align 8
@LPFC_DV_RESET = common dso_local global i64 0, align 8
@LPFC_CTL_PDEV_CTL_DRST = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"3150 No privilage to perform the requested access: x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"3153 Fail to perform the requested access: x%x\0A\00", align 1
@FC_OFFLINE_MODE = common dso_local global i64 0, align 8
@LPFC_EVT_ONLINE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i64)* @lpfc_sli4_pdev_reg_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_pdev_reg_request(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.completion, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 5
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %192

25:                                               ; preds = %2
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LPFC_SLI_REV4, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = call i64 @bf_get(i32 %32, i32* %35)
  %37 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31, %25
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %192

42:                                               ; preds = %31
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %57 = call i32 @pci_disable_sriov(%struct.pci_dev* %56)
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %42
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %62 = load i32, i32* @LPFC_EVT_OFFLINE, align 4
  %63 = call i32 @lpfc_do_offline(%struct.lpfc_hba* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %3, align 4
  br label %192

68:                                               ; preds = %60
  %69 = call i32 @msleep(i32 100)
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LPFC_CTL_PDEV_CTL_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i64 @readl(i64 %75)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @LPFC_FW_DUMP, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %68
  %81 = load i64, i64* @LPFC_FW_DUMP_REQUEST, align 8
  %82 = load i64, i64* %10, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %10, align 8
  br label %102

84:                                               ; preds = %68
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @LPFC_FW_RESET, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64, i64* @LPFC_CTL_PDEV_CTL_FRST, align 8
  %90 = load i64, i64* %10, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %10, align 8
  br label %101

92:                                               ; preds = %84
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @LPFC_DV_RESET, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i64, i64* @LPFC_CTL_PDEV_CTL_DRST, align 8
  %98 = load i64, i64* %10, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %10, align 8
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %88
  br label %102

102:                                              ; preds = %101, %80
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LPFC_CTL_PDEV_CTL_OFFSET, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i64 %103, i64 %109)
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LPFC_CTL_PDEV_CTL_OFFSET, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i64 @readl(i64 %116)
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %119 = call i32 @lpfc_sli4_pdev_status_reg_wait(%struct.lpfc_hba* %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @EPERM, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %102
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %126 = load i32, i32* @KERN_ERR, align 4
  %127 = load i32, i32* @LOG_SLI, align 4
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %128)
  br label %143

130:                                              ; preds = %102
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %137 = load i32, i32* @KERN_ERR, align 4
  %138 = load i32, i32* @LOG_SLI, align 4
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %136, i32 %137, i32 %138, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %139)
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %3, align 4
  br label %192

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %124
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* @FC_OFFLINE_MODE, align 8
  %146 = and i64 %144, %145
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %159

149:                                              ; preds = %143
  %150 = call i32 @init_completion(%struct.completion* %6)
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %152 = load i32, i32* @LPFC_EVT_ONLINE, align 4
  %153 = call i32 @lpfc_workq_post_event(%struct.lpfc_hba* %151, i32* %11, %struct.completion* %6, i32 %152)
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %149
  br label %159

157:                                              ; preds = %149
  %158 = call i32 @wait_for_completion(%struct.completion* %6)
  br label %159

159:                                              ; preds = %157, %156, %148
  %160 = load i64, i64* %9, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %164 = load i64, i64* %9, align 8
  %165 = call i32 @lpfc_sli_probe_sriov_nr_virtfn(%struct.lpfc_hba* %163, i64 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %162
  %169 = load i64, i64* %9, align 8
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %168, %162
  br label %173

173:                                              ; preds = %172, %159
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %12, align 4
  br label %189

182:                                              ; preds = %176
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, i32* @EIO, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %185, %182
  br label %189

189:                                              ; preds = %188, %179
  br label %190

190:                                              ; preds = %189, %173
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %190, %135, %66, %39, %22
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_do_offline(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @lpfc_sli4_pdev_status_reg_wait(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @lpfc_workq_post_event(%struct.lpfc_hba*, i32*, %struct.completion*, i32) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @lpfc_sli_probe_sriov_nr_virtfn(%struct.lpfc_hba*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
