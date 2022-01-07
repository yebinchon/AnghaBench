; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_init_pci_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_init_pci_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info*, %struct.TYPE_2__* }
%struct.qlcnic_pci_info = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@QLCNIC_MAX_PCI_FUNC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_NIU_MAX_XG_PORTS = common dso_local global i32 0, align 4
@QL_STATUS_INVALID_PARAM = common dso_local global i32 0, align 4
@QLCNIC_TYPE_NIC = common dso_local global i64 0, align 8
@QLCNIC_SWITCH_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_init_pci_info(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_pci_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @QLCNIC_MAX_PCI_FUNC, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.qlcnic_pci_info* @kcalloc(i32 %10, i32 56, i32 %11)
  store %struct.qlcnic_pci_info* %12, %struct.qlcnic_pci_info** %4, align 8
  %13 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %14 = icmp ne %struct.qlcnic_pci_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %229

18:                                               ; preds = %1
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %21 = call i32 @qlcnic_get_pci_info(%struct.qlcnic_adapter* %19, %struct.qlcnic_pci_info* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %225

25:                                               ; preds = %18
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.qlcnic_pci_info*
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 0
  store %struct.qlcnic_pci_info* %37, %struct.qlcnic_pci_info** %39, align 8
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 0
  %42 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %41, align 8
  %43 = icmp ne %struct.qlcnic_pci_info* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %25
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %225

47:                                               ; preds = %25
  %48 = load i32, i32* @QLCNIC_NIU_MAX_XG_PORTS, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.qlcnic_pci_info*
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %55, i32 0, i32 1
  store %struct.qlcnic_pci_info* %54, %struct.qlcnic_pci_info** %56, align 8
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %57, i32 0, i32 1
  %59 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %58, align 8
  %60 = icmp ne %struct.qlcnic_pci_info* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %47
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %218

64:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %178, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @QLCNIC_MAX_PCI_FUNC, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %181

69:                                               ; preds = %65
  %70 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %70, i64 %72
  %74 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @QLCNIC_MAX_PCI_FUNC, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %80, i32* %6, align 4
  br label %211

81:                                               ; preds = %69
  %82 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %82, i64 %84
  %86 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %90, i64 %92
  %94 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @QLCNIC_TYPE_NIC, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89, %81
  br label %178

99:                                               ; preds = %89
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %101, i32 0, i32 0
  %103 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %103, i64 %105
  %107 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %106, i32 0, i32 3
  store i32 %100, i32* %107, align 8
  %108 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %108, i64 %110
  %112 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %114, i32 0, i32 0
  %116 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %116, i64 %118
  %120 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %119, i32 0, i32 1
  store i32 %113, i32* %120, align 4
  %121 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %121, i64 %123
  %125 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = sext i32 %127 to i64
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %129, i32 0, i32 0
  %131 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %131, i64 %133
  %135 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %134, i32 0, i32 2
  store i64 %128, i64* %135, align 8
  %136 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %136, i64 %138
  %140 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %139, i32 0, i32 10
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %144 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %143, i32 0, i32 0
  %145 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %145, i64 %147
  %149 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %148, i32 0, i32 4
  store i32 %142, i32* %149, align 4
  %150 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %150, i64 %152
  %154 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %157 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %156, i32 0, i32 0
  %158 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %158, i64 %160
  %162 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %161, i32 0, i32 9
  store i32 %155, i32* %162, align 8
  %163 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %163, i64 %165
  %167 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %170 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %169, i32 0, i32 0
  %171 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %171, i64 %173
  %175 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %174, i32 0, i32 7
  store i32 %168, i32* %175, align 8
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %99, %98
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %65

181:                                              ; preds = %65
  store i32 0, i32* %5, align 4
  br label %182

182:                                              ; preds = %205, %181
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @QLCNIC_NIU_MAX_XG_PORTS, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %182
  %187 = load i32, i32* @QLCNIC_SWITCH_ENABLE, align 4
  %188 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %189 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %188, i32 0, i32 1
  %190 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %190, i64 %192
  %194 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %187
  store i32 %196, i32* %194, align 8
  %197 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %198 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %186
  %201 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @qlcnic_enable_eswitch(%struct.qlcnic_adapter* %201, i32 %202, i32 1)
  br label %204

204:                                              ; preds = %200, %186
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %182

208:                                              ; preds = %182
  %209 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %210 = call i32 @kfree(%struct.qlcnic_pci_info* %209)
  store i32 0, i32* %2, align 4
  br label %229

211:                                              ; preds = %79
  %212 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %213 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %212, i32 0, i32 1
  %214 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %213, align 8
  %215 = call i32 @kfree(%struct.qlcnic_pci_info* %214)
  %216 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %216, i32 0, i32 1
  store %struct.qlcnic_pci_info* null, %struct.qlcnic_pci_info** %217, align 8
  br label %218

218:                                              ; preds = %211, %61
  %219 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %220 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %219, i32 0, i32 0
  %221 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %220, align 8
  %222 = call i32 @kfree(%struct.qlcnic_pci_info* %221)
  %223 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %224 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %223, i32 0, i32 0
  store %struct.qlcnic_pci_info* null, %struct.qlcnic_pci_info** %224, align 8
  br label %225

225:                                              ; preds = %218, %44, %24
  %226 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %227 = call i32 @kfree(%struct.qlcnic_pci_info* %226)
  %228 = load i32, i32* %6, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %225, %208, %15
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local %struct.qlcnic_pci_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @qlcnic_get_pci_info(%struct.qlcnic_adapter*, %struct.qlcnic_pci_info*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_enable_eswitch(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @kfree(%struct.qlcnic_pci_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
