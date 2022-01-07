; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_probe_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_probe_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32, i32, i32, i32, %struct.TYPE_7__**, %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { {}* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.msix_entry = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }

@EFX_MAX_CHANNELS = common dso_local global i32 0, align 4
@EFX_MAX_EXTRA_CHANNELS = common dso_local global i32 0, align 4
@EFX_INT_MODE_MSIX = common dso_local global i64 0, align 8
@separate_tx_channels = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"WARNING: Insufficient MSI-X vectors available (%d < %u).\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"WARNING: Performance may be reduced.\0A\00", align 1
@EFX_INT_MODE_MSI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"could not enable MSI-X\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"could not enable MSI\0A\00", align 1
@EFX_INT_MODE_LEGACY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_probe_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_probe_interrupts(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 9
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EFX_MAX_CHANNELS, align 4
  %17 = call i32 @min(i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %35, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @EFX_MAX_EXTRA_CHANNELS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 5
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %25, i64 %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EFX_INT_MODE_MSIX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %183

44:                                               ; preds = %38
  %45 = load i32, i32* @EFX_MAX_CHANNELS, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %8, align 8
  %48 = alloca %struct.msix_entry, i64 %46, align 16
  store i64 %46, i64* %9, align 8
  %49 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %50 = call i32 @efx_wanted_parallelism(%struct.efx_nic* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i64, i64* @separate_tx_channels, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = mul i32 %54, 2
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %44
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @min(i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %73, %56
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %48, i64 %70
  %72 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  br label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %63

76:                                               ; preds = %63
  %77 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %78 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %77, i32 0, i32 6
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @pci_enable_msix(%struct.TYPE_8__* %79, %struct.msix_entry* %48, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %76
  %85 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %86 = load i32, i32* @drv, align 4
  %87 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %88 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %85, i32 %86, i32 %89, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %94 = load i32, i32* @drv, align 4
  %95 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %96 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %93, i32 %94, i32 %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp uge i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @EFX_BUG_ON_PARANOID(i32 %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %10, align 4
  %105 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %106 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %105, i32 0, i32 6
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @pci_enable_msix(%struct.TYPE_8__* %107, %struct.msix_entry* %48, i32 %108)
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %84, %76
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %171

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %116 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ugt i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sub i32 %122, %121
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %120, %113
  %125 = load i64, i64* @separate_tx_channels, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = udiv i32 %128, 2
  %130 = call i8* @max(i32 %129, i32 1)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %133 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %136 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = sub i32 %134, %137
  %139 = call i8* @max(i32 %138, i32 1)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %142 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  br label %150

143:                                              ; preds = %124
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %146 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %149 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %143, %127
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %167, %150
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %154 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp ult i32 %152, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %151
  %158 = load i32, i32* %5, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %48, i64 %159
  %161 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call %struct.TYPE_9__* @efx_get_channel(%struct.efx_nic* %163, i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  store i32 %162, i32* %166, align 8
  br label %167

167:                                              ; preds = %157
  %168 = load i32, i32* %5, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %151

170:                                              ; preds = %151
  br label %181

171:                                              ; preds = %110
  %172 = load i64, i64* @EFX_INT_MODE_MSI, align 8
  %173 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %174 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %176 = load i32, i32* @drv, align 4
  %177 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %178 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %175, i32 %176, i32 %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %181

181:                                              ; preds = %171, %170
  %182 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %182)
  br label %183

183:                                              ; preds = %181, %38
  %184 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %185 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @EFX_INT_MODE_MSI, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %222

189:                                              ; preds = %183
  %190 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %191 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %190, i32 0, i32 1
  store i32 1, i32* %191, align 8
  %192 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %193 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %192, i32 0, i32 3
  store i32 1, i32* %193, align 8
  %194 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %195 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %194, i32 0, i32 2
  store i32 1, i32* %195, align 4
  %196 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %197 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %196, i32 0, i32 6
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = call i32 @pci_enable_msi(%struct.TYPE_8__* %198)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %189
  %203 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %204 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %203, i32 0, i32 6
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %209 = call %struct.TYPE_9__* @efx_get_channel(%struct.efx_nic* %208, i32 0)
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  store i32 %207, i32* %210, align 8
  br label %221

211:                                              ; preds = %189
  %212 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %213 = load i32, i32* @drv, align 4
  %214 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %215 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %212, i32 %213, i32 %216, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %218 = load i64, i64* @EFX_INT_MODE_LEGACY, align 8
  %219 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %220 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %219, i32 0, i32 0
  store i64 %218, i64* %220, align 8
  br label %221

221:                                              ; preds = %211, %202
  br label %222

222:                                              ; preds = %221, %183
  %223 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %224 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @EFX_INT_MODE_LEGACY, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %247

228:                                              ; preds = %222
  %229 = load i64, i64* @separate_tx_channels, align 8
  %230 = icmp ne i64 %229, 0
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i32 1, i32 0
  %233 = add nsw i32 1, %232
  %234 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %235 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 8
  %236 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %237 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %236, i32 0, i32 3
  store i32 1, i32* %237, align 8
  %238 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %239 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %238, i32 0, i32 2
  store i32 1, i32* %239, align 4
  %240 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %241 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %240, i32 0, i32 6
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %246 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %245, i32 0, i32 7
  store i32 %244, i32* %246, align 8
  br label %247

247:                                              ; preds = %228, %222
  %248 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %249 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  store i32 %250, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %251

251:                                              ; preds = %305, %247
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* @EFX_MAX_EXTRA_CHANNELS, align 4
  %254 = icmp ult i32 %252, %253
  br i1 %254, label %255, label %308

255:                                              ; preds = %251
  %256 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %257 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %256, i32 0, i32 5
  %258 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %257, align 8
  %259 = load i32, i32* %5, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %258, i64 %260
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %261, align 8
  %263 = icmp ne %struct.TYPE_7__* %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %255
  br label %305

265:                                              ; preds = %255
  %266 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %267 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @EFX_INT_MODE_MSIX, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %277, label %271

271:                                              ; preds = %265
  %272 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %273 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %4, align 4
  %276 = icmp ule i32 %274, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %271, %265
  %278 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %279 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %278, i32 0, i32 5
  %280 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %279, align 8
  %281 = load i32, i32* %5, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %280, i64 %282
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = bitcast {}** %285 to i32 (%struct.efx_nic*)**
  %287 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %286, align 8
  %288 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %289 = call i32 %287(%struct.efx_nic* %288)
  br label %304

290:                                              ; preds = %271
  %291 = load i32, i32* %6, align 4
  %292 = add i32 %291, -1
  store i32 %292, i32* %6, align 4
  %293 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %294 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %293, i32 0, i32 5
  %295 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %294, align 8
  %296 = load i32, i32* %5, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %295, i64 %297
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %298, align 8
  %300 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %301 = load i32, i32* %6, align 4
  %302 = call %struct.TYPE_9__* @efx_get_channel(%struct.efx_nic* %300, i32 %301)
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 0
  store %struct.TYPE_7__* %299, %struct.TYPE_7__** %303, align 8
  br label %304

304:                                              ; preds = %290, %277
  br label %305

305:                                              ; preds = %304, %264
  %306 = load i32, i32* %5, align 4
  %307 = add i32 %306, 1
  store i32 %307, i32* %5, align 4
  br label %251

308:                                              ; preds = %251
  %309 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %310 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = icmp ugt i32 %311, 1
  br i1 %312, label %317, label %313

313:                                              ; preds = %308
  %314 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %315 = call i32 @efx_sriov_wanted(%struct.efx_nic* %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %321, label %317

317:                                              ; preds = %313, %308
  %318 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %319 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  br label %324

321:                                              ; preds = %313
  %322 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %323 = call i32 @efx_vf_size(%struct.efx_nic* %322)
  br label %324

324:                                              ; preds = %321, %317
  %325 = phi i32 [ %320, %317 ], [ %323, %321 ]
  %326 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %327 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %326, i32 0, i32 4
  store i32 %325, i32* %327, align 4
  ret i32 0
}

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @efx_wanted_parallelism(%struct.efx_nic*) #1

declare dso_local i32 @pci_enable_msix(%struct.TYPE_8__*, %struct.msix_entry*, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local %struct.TYPE_9__* @efx_get_channel(%struct.efx_nic*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @pci_enable_msi(%struct.TYPE_8__*) #1

declare dso_local i32 @efx_sriov_wanted(%struct.efx_nic*) #1

declare dso_local i32 @efx_vf_size(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
