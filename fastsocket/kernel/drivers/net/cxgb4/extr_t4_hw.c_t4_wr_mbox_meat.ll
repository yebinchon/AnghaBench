; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_wr_mbox_meat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_wr_mbox_meat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@t4_wr_mbox_meat.delay = internal constant [10 x i32] [i32 1, i32 1, i32 3, i32 5, i32 10, i32 10, i32 20, i32 50, i32 100, i32 200], align 16
@CIM_PF_MAILBOX_DATA = common dso_local global i32 0, align 4
@CIM_PF_MAILBOX_CTRL = common dso_local global i32 0, align 4
@MBOX_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@MBOX_OWNER_NONE = common dso_local global i32 0, align 4
@MBOX_OWNER_DRV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MBMSGVALID = common dso_local global i32 0, align 4
@MBOX_OWNER_FW = common dso_local global i32 0, align 4
@FW_CMD_MAX_TIMEOUT = common dso_local global i32 0, align 4
@FW_DEBUG_CMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"command %#x in mailbox %d timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_wr_mbox_meat(%struct.adapter* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %19, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @CIM_PF_MAILBOX_DATA, align 4
  %26 = call i32 @PF_REG(i32 %24, i32 %25)
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @CIM_PF_MAILBOX_CTRL, align 4
  %29 = call i32 @PF_REG(i32 %27, i32 %28)
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 15
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @MBOX_LEN, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %6
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %222

40:                                               ; preds = %33
  %41 = load %struct.adapter*, %struct.adapter** %8, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @pci_channel_io_normal, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %222

51:                                               ; preds = %40
  %52 = load %struct.adapter*, %struct.adapter** %8, align 8
  %53 = load i32, i32* %21, align 4
  %54 = call i32 @t4_read_reg(%struct.adapter* %52, i32 %53)
  %55 = call i32 @MBOWNER_GET(i32 %54)
  store i32 %55, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %70, %51
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @MBOX_OWNER_NONE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 3
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i1 [ false, %56 ], [ %62, %60 ]
  br i1 %64, label %65, label %73

65:                                               ; preds = %63
  %66 = load %struct.adapter*, %struct.adapter** %8, align 8
  %67 = load i32, i32* %21, align 4
  %68 = call i32 @t4_read_reg(%struct.adapter* %66, i32 %67)
  %69 = call i32 @MBOWNER_GET(i32 %68)
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %56

73:                                               ; preds = %63
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @MBOX_OWNER_DRV, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  br label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @ETIMEDOUT, align 4
  %85 = sub nsw i32 0, %84
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i32 [ %82, %80 ], [ %85, %83 ]
  store i32 %87, i32* %7, align 4
  br label %222

88:                                               ; preds = %73
  store i32 0, i32* %16, align 4
  br label %89

89:                                               ; preds = %103, %88
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.adapter*, %struct.adapter** %8, align 8
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32*, i32** %19, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %19, align 8
  %100 = load i32, i32* %98, align 4
  %101 = call i32 @be64_to_cpu(i32 %100)
  %102 = call i32 @t4_write_reg64(%struct.adapter* %94, i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 8
  store i32 %105, i32* %16, align 4
  br label %89

106:                                              ; preds = %89
  %107 = load %struct.adapter*, %struct.adapter** %8, align 8
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* @MBMSGVALID, align 4
  %110 = load i32, i32* @MBOX_OWNER_FW, align 4
  %111 = call i32 @MBOWNER(i32 %110)
  %112 = or i32 %109, %111
  %113 = call i32 @t4_write_reg(%struct.adapter* %107, i32 %108, i32 %112)
  %114 = load %struct.adapter*, %struct.adapter** %8, align 8
  %115 = load i32, i32* %21, align 4
  %116 = call i32 @t4_read_reg(%struct.adapter* %114, i32 %115)
  store i32 0, i32* %18, align 4
  %117 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @t4_wr_mbox_meat.delay, i64 0, i64 0), align 16
  store i32 %117, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %203, %106
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* @FW_CMD_MAX_TIMEOUT, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %207

122:                                              ; preds = %118
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %122
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [10 x i32], [10 x i32]* @t4_wr_mbox_meat.delay, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @t4_wr_mbox_meat.delay, i64 0, i64 0))
  %132 = sub nsw i32 %131, 1
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i32, i32* %18, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %18, align 4
  br label %137

137:                                              ; preds = %134, %125
  %138 = load i32, i32* %17, align 4
  %139 = call i32 @msleep(i32 %138)
  br label %143

140:                                              ; preds = %122
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @mdelay(i32 %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.adapter*, %struct.adapter** %8, align 8
  %145 = load i32, i32* %21, align 4
  %146 = call i32 @t4_read_reg(%struct.adapter* %144, i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @MBOWNER_GET(i32 %147)
  %149 = load i32, i32* @MBOX_OWNER_DRV, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %202

151:                                              ; preds = %143
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @MBMSGVALID, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = load %struct.adapter*, %struct.adapter** %8, align 8
  %158 = load i32, i32* %21, align 4
  %159 = call i32 @t4_write_reg(%struct.adapter* %157, i32 %158, i32 0)
  br label %203

160:                                              ; preds = %151
  %161 = load %struct.adapter*, %struct.adapter** %8, align 8
  %162 = load i32, i32* %20, align 4
  %163 = call i32 @t4_read_reg64(%struct.adapter* %161, i32 %162)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = ashr i32 %164, 32
  %166 = call i64 @FW_CMD_OP_GET(i32 %165)
  %167 = load i64, i64* @FW_DEBUG_CMD, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %160
  %170 = load %struct.adapter*, %struct.adapter** %8, align 8
  %171 = load i32, i32* %20, align 4
  %172 = call i32 @fw_asrt(%struct.adapter* %170, i32 %171)
  %173 = load i32, i32* @EIO, align 4
  %174 = call i32 @FW_CMD_RETVAL(i32 %173)
  store i32 %174, i32* %15, align 4
  br label %186

175:                                              ; preds = %160
  %176 = load i8*, i8** %12, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load %struct.adapter*, %struct.adapter** %8, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sdiv i32 %181, 8
  %183 = load i32, i32* %20, align 4
  %184 = call i32 @get_mbox_rpl(%struct.adapter* %179, i8* %180, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %178, %175
  br label %186

186:                                              ; preds = %185, %169
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @FW_CMD_RETVAL_GET(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load %struct.adapter*, %struct.adapter** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %20, align 4
  %194 = call i32 @dump_mbox(%struct.adapter* %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %186
  %196 = load %struct.adapter*, %struct.adapter** %8, align 8
  %197 = load i32, i32* %21, align 4
  %198 = call i32 @t4_write_reg(%struct.adapter* %196, i32 %197, i32 0)
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @FW_CMD_RETVAL_GET(i32 %199)
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %7, align 4
  br label %222

202:                                              ; preds = %143
  br label %203

203:                                              ; preds = %202, %156
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %16, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %16, align 4
  br label %118

207:                                              ; preds = %118
  %208 = load %struct.adapter*, %struct.adapter** %8, align 8
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %20, align 4
  %211 = call i32 @dump_mbox(%struct.adapter* %208, i32 %209, i32 %210)
  %212 = load %struct.adapter*, %struct.adapter** %8, align 8
  %213 = getelementptr inbounds %struct.adapter, %struct.adapter* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i8*, i8** %10, align 8
  %216 = bitcast i8* %215 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @dev_err(i32 %214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %217, i32 %218)
  %220 = load i32, i32* @ETIMEDOUT, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %207, %195, %86, %48, %37
  %223 = load i32, i32* %7, align 4
  ret i32 %223
}

declare dso_local i32 @PF_REG(i32, i32) #1

declare dso_local i32 @MBOWNER_GET(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_write_reg64(%struct.adapter*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MBOWNER(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @t4_read_reg64(%struct.adapter*, i32) #1

declare dso_local i64 @FW_CMD_OP_GET(i32) #1

declare dso_local i32 @fw_asrt(%struct.adapter*, i32) #1

declare dso_local i32 @FW_CMD_RETVAL(i32) #1

declare dso_local i32 @get_mbox_rpl(%struct.adapter*, i8*, i32, i32) #1

declare dso_local i32 @FW_CMD_RETVAL_GET(i32) #1

declare dso_local i32 @dump_mbox(%struct.adapter*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
