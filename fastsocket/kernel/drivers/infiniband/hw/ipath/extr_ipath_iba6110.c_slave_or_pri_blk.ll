; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_slave_or_pri_blk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_slave_or_pri_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HT%u (Link %c) connected to processor\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Couldn't read HT link control%d register\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Clear linkctrl%d CRC Error bits %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Couldn't read linkerror%d of HT slave/primary block\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"HT linkerr%d bits 0x%x set, clearing\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed write to clear HT linkerror%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Couldn't reread linkerror%d of HT slave/primary block\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"HT linkerror%d bits 0x%x couldn't be cleared\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Couldn't read HT link width config register\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Not configured for 16 bit HT (%x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Will ignore HT lane1 errors\0A\00", align 1
@IPATH_8BIT_IN_HT0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"Couldn't read HT link frequency config register\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"HyperTransport,%uMHz,x%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, %struct.pci_dev*, i32, i32)* @slave_or_pri_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slave_or_pri_blk(%struct.ipath_devdata* %0, %struct.pci_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %19 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 2
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  br label %26

25:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* @VERBOSE, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 66, i32 65
  %36 = call i32 @ipath_cdbg(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %74, %26
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %77

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %14, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %44, %46
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @pci_read_config_word(%struct.pci_dev* %49, i32 %50, i32* %13)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %73

57:                                               ; preds = %43
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, 3840
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, i32* @VERBOSE, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, 3840
  %66 = call i32 @ipath_cdbg(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, 3840
  %71 = call i32 @pci_write_config_word(%struct.pci_dev* %67, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %61, %57
  br label %73

73:                                               ; preds = %72, %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %40

77:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %139, %77
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %142

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %14, align 4
  %84 = mul nsw i32 %83, 4
  %85 = add nsw i32 %82, %84
  %86 = add nsw i32 %85, 13
  store i32 %86, i32* %12, align 4
  %87 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @pci_read_config_byte(%struct.pci_dev* %87, i32 %88, i32* %10)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %14, align 4
  %95 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %93, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %138

96:                                               ; preds = %81
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 240
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %137

100:                                              ; preds = %96
  %101 = load i32, i32* @VERBOSE, align 4
  %102 = load i32, i32* %10, align 4
  %103 = ashr i32 %102, 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @ipath_cdbg(i32 %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i64 @pci_write_config_byte(%struct.pci_dev* %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load i32, i32* %14, align 4
  %113 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %100
  %115 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i64 @pci_read_config_byte(%struct.pci_dev* %115, i32 %116, i32* %10)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %14, align 4
  %123 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %121, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  br label %136

124:                                              ; preds = %114
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 240
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %10, align 4
  %133 = ashr i32 %132, 4
  %134 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %130, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %131, i32 %133)
  br label %135

135:                                              ; preds = %128, %124
  br label %136

136:                                              ; preds = %135, %119
  br label %137

137:                                              ; preds = %136, %96
  br label %138

138:                                              ; preds = %137, %91
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %78

142:                                              ; preds = %78
  %143 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 7
  %146 = call i64 @pci_read_config_byte(%struct.pci_dev* %143, i32 %145, i32* %9)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %150 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %149, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %183

151:                                              ; preds = %142
  %152 = load i32, i32* %9, align 4
  %153 = and i32 %152, 7
  switch i32 %153, label %159 [
    i32 5, label %154
    i32 4, label %155
    i32 3, label %156
    i32 1, label %157
    i32 0, label %158
  ]

154:                                              ; preds = %151
  store i8* inttoptr (i64 4 to i8*), i8** %15, align 8
  br label %160

155:                                              ; preds = %151
  store i8* inttoptr (i64 2 to i8*), i8** %15, align 8
  br label %160

156:                                              ; preds = %151
  store i8* inttoptr (i64 32 to i8*), i8** %15, align 8
  br label %160

157:                                              ; preds = %151
  store i8* inttoptr (i64 16 to i8*), i8** %15, align 8
  br label %160

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %151, %158
  store i8* inttoptr (i64 8 to i8*), i8** %15, align 8
  br label %160

160:                                              ; preds = %159, %157, %156, %155, %154
  %161 = load i8*, i8** %15, align 8
  %162 = ptrtoint i8* %161 to i32
  %163 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %164 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 17
  br i1 %166, label %167, label %182

167:                                              ; preds = %160
  %168 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = and i32 %171, 15
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %167
  %175 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %176 = load i32, i32* @IPATH_8BIT_IN_HT0, align 4
  %177 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %178 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %174, %167
  br label %182

182:                                              ; preds = %181, %160
  br label %183

183:                                              ; preds = %182, %148
  %184 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 13
  %187 = call i64 @pci_read_config_byte(%struct.pci_dev* %184, i32 %186, i32* %9)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %191 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %190, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %208

192:                                              ; preds = %183
  %193 = load i32, i32* %9, align 4
  %194 = and i32 %193, 15
  switch i32 %194, label %201 [
    i32 6, label %195
    i32 5, label %196
    i32 4, label %197
    i32 3, label %198
    i32 2, label %199
    i32 1, label %200
    i32 0, label %202
  ]

195:                                              ; preds = %192
  store i8* inttoptr (i64 1000 to i8*), i8** %16, align 8
  br label %203

196:                                              ; preds = %192
  store i8* inttoptr (i64 800 to i8*), i8** %16, align 8
  br label %203

197:                                              ; preds = %192
  store i8* inttoptr (i64 600 to i8*), i8** %16, align 8
  br label %203

198:                                              ; preds = %192
  store i8* inttoptr (i64 500 to i8*), i8** %16, align 8
  br label %203

199:                                              ; preds = %192
  store i8* inttoptr (i64 400 to i8*), i8** %16, align 8
  br label %203

200:                                              ; preds = %192
  store i8* inttoptr (i64 300 to i8*), i8** %16, align 8
  br label %203

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %192, %201
  store i8* inttoptr (i64 200 to i8*), i8** %16, align 8
  br label %203

203:                                              ; preds = %202, %200, %199, %198, %197, %196, %195
  %204 = load i8*, i8** %16, align 8
  %205 = ptrtoint i8* %204 to i32
  %206 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %207 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %203, %189
  %209 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %210 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %213 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %216 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @snprintf(i32 %211, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %214, i32 %217)
  ret void
}

declare dso_local i32 @ipath_cdbg(i32, i8*, i32, i32) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, ...) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ipath_dbg(i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
