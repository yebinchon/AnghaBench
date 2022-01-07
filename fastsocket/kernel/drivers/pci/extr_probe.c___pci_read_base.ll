; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c___pci_read_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c___pci_read_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.resource = type { i32, i32 }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_dev_rh1 = type { i32 }

@PCI_ROM_ADDRESS_ENABLE = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@pci_bar_unknown = common dso_local global i32 0, align 4
@IORESOURCE_SIZEALIGN = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_IO_MASK = common dso_local global i32 0, align 4
@IO_SPACE_LIMIT = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@IORESOURCE_ROM_ENABLE = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS_MASK = common dso_local global i32 0, align 4
@IORESOURCE_MEM_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"reg %x: can't handle 64-bit BAR\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"reg %x: %pR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pci_read_base(%struct.pci_dev* %0, i32 %1, %struct.resource* %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_bus_region, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.resource* %2, %struct.resource** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @PCI_ROM_ADDRESS_ENABLE, align 4
  %21 = xor i32 %20, -1
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ -1, %22 ]
  store i32 %24, i32* %11, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.pci_dev_rh1*
  %29 = getelementptr inbounds %struct.pci_dev_rh1, %struct.pci_dev_rh1* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %23
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = load i32, i32* @PCI_COMMAND, align 4
  %35 = call i32 @pci_read_config_word(%struct.pci_dev* %33, i32 %34, i32* %12)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = load i32, i32* @PCI_COMMAND, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %40 = load i32, i32* @PCI_COMMAND_IO, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = call i32 @pci_write_config_word(%struct.pci_dev* %36, i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %32, %23
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = call i32 @pci_name(%struct.pci_dev* %46)
  %48 = load %struct.resource*, %struct.resource** %7, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pci_read_config_dword(%struct.pci_dev* %50, i32 %51, i32* %9)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @pci_write_config_dword(%struct.pci_dev* %53, i32 %54, i32 %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @pci_read_config_dword(%struct.pci_dev* %57, i32 %58, i32* %10)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @pci_write_config_dword(%struct.pci_dev* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %45
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %45
  br label %254

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @pci_bar_unknown, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %74
  %79 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @decode_bar(%struct.pci_dev* %79, i32 %80)
  %82 = load %struct.resource*, %struct.resource** %7, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %85 = load %struct.resource*, %struct.resource** %7, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.resource*, %struct.resource** %7, align 8
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IORESOURCE_IO, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %78
  %96 = load i32, i32* @PCI_BASE_ADDRESS_IO_MASK, align 4
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* @PCI_BASE_ADDRESS_IO_MASK, align 4
  %100 = load i32, i32* @IO_SPACE_LIMIT, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %11, align 4
  br label %107

102:                                              ; preds = %78
  %103 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %102, %95
  br label %120

108:                                              ; preds = %74
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @IORESOURCE_ROM_ENABLE, align 4
  %111 = and i32 %109, %110
  %112 = load %struct.resource*, %struct.resource** %7, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* @PCI_ROM_ADDRESS_MASK, align 4
  %117 = load i32, i32* %9, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @PCI_ROM_ADDRESS_MASK, align 4
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %108, %107
  %121 = load %struct.resource*, %struct.resource** %7, align 8
  %122 = getelementptr inbounds %struct.resource, %struct.resource* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %207

127:                                              ; preds = %120
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, undef
  store i32 %131, i32* %16, align 4
  %132 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add i32 %133, 4
  %135 = call i32 @pci_read_config_dword(%struct.pci_dev* %132, i32 %134, i32* %9)
  %136 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add i32 %137, 4
  %139 = call i32 @pci_write_config_dword(%struct.pci_dev* %136, i32 %138, i32 -1)
  %140 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 4
  %143 = call i32 @pci_read_config_dword(%struct.pci_dev* %140, i32 %142, i32* %10)
  %144 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %145 = load i32, i32* %8, align 4
  %146 = add i32 %145, 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @pci_write_config_dword(%struct.pci_dev* %144, i32 %146, i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = shl i32 %149, 32
  %151 = load i32, i32* %14, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %10, align 4
  %154 = shl i32 %153, 32
  %155 = load i32, i32* %15, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @pci_size(i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %127
  br label %254

164:                                              ; preds = %127
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp ugt i64 %166, 4294967296
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %170 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %169, i32 0, i32 1
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %171)
  br label %254

173:                                              ; preds = %164
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @pci_write_config_dword(%struct.pci_dev* %177, i32 %178, i32 0)
  %180 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %181 = load i32, i32* %8, align 4
  %182 = add i32 %181, 4
  %183 = call i32 @pci_write_config_dword(%struct.pci_dev* %180, i32 %182, i32 0)
  %184 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 0
  store i32 0, i32* %184, align 4
  %185 = load i32, i32* %15, align 4
  %186 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 1
  store i32 %185, i32* %186, align 4
  %187 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %188 = load %struct.resource*, %struct.resource** %7, align 8
  %189 = call i32 @pcibios_bus_to_resource(%struct.pci_dev* %187, %struct.resource* %188, %struct.pci_bus_region* %13)
  br label %206

190:                                              ; preds = %173
  %191 = load i32, i32* %14, align 4
  %192 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 0
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %193, %194
  %196 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 1
  store i32 %195, i32* %196, align 4
  %197 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %198 = load %struct.resource*, %struct.resource** %7, align 8
  %199 = call i32 @pcibios_bus_to_resource(%struct.pci_dev* %197, %struct.resource* %198, %struct.pci_bus_region* %13)
  %200 = load i32, i32* @KERN_DEBUG, align 4
  %201 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %202 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %201, i32 0, i32 1
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.resource*, %struct.resource** %7, align 8
  %205 = call i32 @dev_printk(i32 %200, i32* %202, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %203, %struct.resource* %204)
  br label %206

206:                                              ; preds = %190, %176
  br label %231

207:                                              ; preds = %120
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @pci_size(i32 %208, i32 %209, i32 %210)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %207
  br label %254

215:                                              ; preds = %207
  %216 = load i32, i32* %9, align 4
  %217 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 0
  store i32 %216, i32* %217, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %218, %219
  %221 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 1
  store i32 %220, i32* %221, align 4
  %222 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %223 = load %struct.resource*, %struct.resource** %7, align 8
  %224 = call i32 @pcibios_bus_to_resource(%struct.pci_dev* %222, %struct.resource* %223, %struct.pci_bus_region* %13)
  %225 = load i32, i32* @KERN_DEBUG, align 4
  %226 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %227 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %226, i32 0, i32 1
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.resource*, %struct.resource** %7, align 8
  %230 = call i32 @dev_printk(i32 %225, i32* %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %228, %struct.resource* %229)
  br label %231

231:                                              ; preds = %215, %206
  br label %232

232:                                              ; preds = %254, %231
  %233 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %234 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to %struct.pci_dev_rh1*
  %237 = getelementptr inbounds %struct.pci_dev_rh1, %struct.pci_dev_rh1* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %232
  %241 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %242 = load i32, i32* @PCI_COMMAND, align 4
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @pci_write_config_word(%struct.pci_dev* %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %240, %232
  %246 = load %struct.resource*, %struct.resource** %7, align 8
  %247 = getelementptr inbounds %struct.resource, %struct.resource* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 1, i32 0
  ret i32 %253

254:                                              ; preds = %214, %168, %163, %69
  %255 = load %struct.resource*, %struct.resource** %7, align 8
  %256 = getelementptr inbounds %struct.resource, %struct.resource* %255, i32 0, i32 0
  store i32 0, i32* %256, align 4
  br label %232
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @decode_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_size(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pcibios_bus_to_resource(%struct.pci_dev*, %struct.resource*, %struct.pci_bus_region*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
