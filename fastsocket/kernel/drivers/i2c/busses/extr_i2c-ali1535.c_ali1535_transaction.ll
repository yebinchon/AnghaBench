; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1535.c_ali1535_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1535.c_ali1535_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [81 x i8] c"Transaction (pre): STS=%02x, TYP=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@SMBHSTSTS = common dso_local global i32 0, align 4
@SMBHSTTYP = common dso_local global i32 0, align 4
@SMBHSTCMD = common dso_local global i32 0, align 4
@SMBHSTADD = common dso_local global i32 0, align 4
@SMBHSTDAT0 = common dso_local global i32 0, align 4
@SMBHSTDAT1 = common dso_local global i32 0, align 4
@ALI1535_STS_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Resetting entire SMB Bus to clear busy condition (%02x)\0A\00", align 1
@ALI1535_T_OUT = common dso_local global i32 0, align 4
@ALI1535_STS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"SMBus reset failed! (0x%02x) - controller or device on bus is probably hung\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ALI1535_STS_DONE = common dso_local global i32 0, align 4
@SMBHSTPORT = common dso_local global i32 0, align 4
@ALI1535_STS_IDLE = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"SMBus Timeout!\0A\00", align 1
@ALI1535_STS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Error: Failed bus transaction\0A\00", align 1
@ALI1535_STS_BUSERR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Error: no response or bus collision ADD=%02x\0A\00", align 1
@ALI1535_STS_DEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Error: device error\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Error: command never completed\0A\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"Transaction (post): STS=%02x, TYP=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@ALI1535_KILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @ali1535_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali1535_transaction(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* @SMBHSTSTS, align 4
  %10 = call i32 @inb_p(i32 %9)
  %11 = load i32, i32* @SMBHSTTYP, align 4
  %12 = call i32 @inb_p(i32 %11)
  %13 = load i32, i32* @SMBHSTCMD, align 4
  %14 = call i32 @inb_p(i32 %13)
  %15 = load i32, i32* @SMBHSTADD, align 4
  %16 = call i32 @inb_p(i32 %15)
  %17 = load i32, i32* @SMBHSTDAT0, align 4
  %18 = call i32 @inb_p(i32 %17)
  %19 = load i32, i32* @SMBHSTDAT1, align 4
  %20 = call i32 @inb_p(i32 %19)
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %8, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32 %14, i32 %16, i32 %18, i32 %20)
  %22 = load i32, i32* @SMBHSTSTS, align 4
  %23 = call i32 @inb_p(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ALI1535_STS_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ALI1535_T_OUT, align 4
  %34 = load i32, i32* @SMBHSTTYP, align 4
  %35 = call i32 @outb_p(i32 %33, i32 %34)
  %36 = load i32, i32* @SMBHSTSTS, align 4
  %37 = call i32 @inb_p(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %1
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ALI1535_STS_ERR, align 4
  %41 = load i32, i32* @ALI1535_STS_BUSY, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load i32, i32* @SMBHSTSTS, align 4
  %47 = call i32 @outb_p(i32 255, i32 %46)
  %48 = load i32, i32* @SMBHSTSTS, align 4
  %49 = call i32 @inb_p(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @ALI1535_STS_ERR, align 4
  %51 = load i32, i32* @ALI1535_STS_BUSY, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %193

62:                                               ; preds = %45
  br label %73

63:                                               ; preds = %38
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @ALI1535_STS_DONE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @SMBHSTSTS, align 4
  %71 = call i32 @outb_p(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* @SMBHSTPORT, align 4
  %75 = call i32 @outb_p(i32 255, i32 %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %95, %73
  %77 = call i32 @msleep(i32 1)
  %78 = load i32, i32* @SMBHSTSTS, align 4
  %79 = call i32 @inb_p(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @ALI1535_STS_BUSY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @ALI1535_STS_IDLE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @MAX_TIMEOUT, align 4
  %94 = icmp slt i32 %91, %93
  br label %95

95:                                               ; preds = %90, %85, %80
  %96 = phi i1 [ false, %85 ], [ false, %80 ], [ %94, %90 ]
  br i1 %96, label %76, label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @MAX_TIMEOUT, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32, i32* @ETIMEDOUT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %104, i32 0, i32 0
  %106 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %101, %97
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @ALI1535_STS_FAIL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  %115 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %112, %107
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @ALI1535_STS_BUSERR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i32, i32* @ENXIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  %126 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %126, i32 0, i32 0
  %128 = load i32, i32* @SMBHSTADD, align 4
  %129 = call i32 @inb_p(i32 %128)
  %130 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %127, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %123, %118
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @ALI1535_STS_DEV, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  %139 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %139, i32 0, i32 0
  %141 = call i32 (i32*, i8*, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %136, %131
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @ALI1535_STS_DONE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @ETIMEDOUT, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %5, align 4
  %150 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %150, i32 0, i32 0
  %152 = call i32 (i32*, i8*, ...) @dev_err(i32* %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %153

153:                                              ; preds = %147, %142
  %154 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %155 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %154, i32 0, i32 0
  %156 = load i32, i32* @SMBHSTSTS, align 4
  %157 = call i32 @inb_p(i32 %156)
  %158 = load i32, i32* @SMBHSTTYP, align 4
  %159 = call i32 @inb_p(i32 %158)
  %160 = load i32, i32* @SMBHSTCMD, align 4
  %161 = call i32 @inb_p(i32 %160)
  %162 = load i32, i32* @SMBHSTADD, align 4
  %163 = call i32 @inb_p(i32 %162)
  %164 = load i32, i32* @SMBHSTDAT0, align 4
  %165 = call i32 @inb_p(i32 %164)
  %166 = load i32, i32* @SMBHSTDAT1, align 4
  %167 = call i32 @inb_p(i32 %166)
  %168 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %155, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i32 %157, i32 %159, i32 %161, i32 %163, i32 %165, i32 %167)
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @ALI1535_STS_DONE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %153
  %174 = load i32, i32* @ALI1535_KILL, align 4
  %175 = load i32, i32* @SMBHSTTYP, align 4
  %176 = call i32 @outb_p(i32 %174, i32 %175)
  %177 = load i32, i32* @SMBHSTSTS, align 4
  %178 = call i32 @outb_p(i32 255, i32 %177)
  br label %191

179:                                              ; preds = %153
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @ALI1535_STS_ERR, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load i32, i32* @ALI1535_T_OUT, align 4
  %186 = load i32, i32* @SMBHSTTYP, align 4
  %187 = call i32 @outb_p(i32 %185, i32 %186)
  %188 = load i32, i32* @SMBHSTSTS, align 4
  %189 = call i32 @outb_p(i32 255, i32 %188)
  br label %190

190:                                              ; preds = %184, %179
  br label %191

191:                                              ; preds = %190, %173
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %191, %55
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
