; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_m32r_pcc.c_pcc_iorw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_m32r_pcc.c_pcc_iorw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i64 }

@socket = common dso_local global %struct.TYPE_3__* null, align 8
@pcc_lock = common dso_local global i32 0, align 4
@PCMOD_DBEX = common dso_local global i32 0, align 4
@KSEG1 = common dso_local global i32 0, align 4
@as_io = common dso_local global i64 0, align 8
@PCCR = common dso_local global i32 0, align 4
@MAP_16BIT = common dso_local global i32 0, align 4
@PCMOD_CBSZ = common dso_local global i32 0, align 4
@PCMOD = common dso_local global i32 0, align 4
@PCMOD_AS_IO = common dso_local global i32 0, align 4
@PCADR = common dso_local global i32 0, align 4
@PCIRC = common dso_local global i32 0, align 4
@PCIRC_BWERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"m32r_pcc: BWERR detected : port 0x%04lx : iosize %dbit\0A\00", align 1
@as_attr = common dso_local global i64 0, align 8
@dummy_readbuf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcc_iorw(i32 %0, i64 %1, i8* %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i16*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @socket, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %18, align 8
  %26 = load i32, i32* %16, align 4
  %27 = call i32 @spin_lock_irqsave(i32* @pcc_lock, i32 %26)
  %28 = load i64, i64* %11, align 8
  %29 = icmp ugt i64 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load i32, i32* %14, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @PCMOD_DBEX, align 4
  br label %36

35:                                               ; preds = %30, %7
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  store i32 %37, i32* %17, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %41, %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %43, %47
  %49 = load i32, i32* @KSEG1, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %48, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @as_io, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %36
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %58, %36
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @PCCR, align 4
  %67 = call i32 @pcc_set(i32 %65, i32 %66, i32 0)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MAP_16BIT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %77

75:                                               ; preds = %64
  %76 = load i32, i32* @PCMOD_CBSZ, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ 0, %74 ], [ %76, %75 ]
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @PCMOD, align 4
  %81 = load i32, i32* @PCMOD_AS_IO, align 4
  %82 = load i32, i32* %19, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %17, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @pcc_set(i32 %79, i32 %80, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @PCADR, align 4
  %89 = load i32, i32* %15, align 4
  %90 = and i32 %89, 535822336
  %91 = call i32 @pcc_set(i32 %87, i32 %88, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @PCCR, align 4
  %94 = call i32 @pcc_set(i32 %92, i32 %93, i32 1)
  %95 = load i64, i64* @as_io, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %77, %58
  %99 = load i64, i64* %11, align 8
  %100 = icmp eq i64 %99, 1
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = load i8*, i8** %10, align 8
  store i8* %102, i8** %20, align 8
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %110, %105
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %12, align 8
  %109 = icmp ne i64 %107, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i8*, i8** %20, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %20, align 8
  %113 = load i8, i8* %111, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @writeb(i32 %114, i32 %115)
  br label %106

117:                                              ; preds = %106
  br label %130

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %123, %118
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, -1
  store i64 %121, i64* %12, align 8
  %122 = icmp ne i64 %120, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32, i32* %15, align 4
  %125 = call i8* @readb(i32 %124)
  %126 = ptrtoint i8* %125 to i8
  %127 = load i8*, i8** %20, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %20, align 8
  store i8 %126, i8* %127, align 1
  br label %119

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %117
  br label %161

131:                                              ; preds = %98
  %132 = load i8*, i8** %10, align 8
  %133 = bitcast i8* %132 to i16*
  store i16* %133, i16** %21, align 8
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %141, %136
  %138 = load i64, i64* %12, align 8
  %139 = add i64 %138, -1
  store i64 %139, i64* %12, align 8
  %140 = icmp ne i64 %138, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i16*, i16** %21, align 8
  %143 = getelementptr inbounds i16, i16* %142, i32 1
  store i16* %143, i16** %21, align 8
  %144 = load i16, i16* %142, align 2
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @writew(i16 zeroext %144, i32 %145)
  br label %137

147:                                              ; preds = %137
  br label %160

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %153, %148
  %150 = load i64, i64* %12, align 8
  %151 = add i64 %150, -1
  store i64 %151, i64* %12, align 8
  %152 = icmp ne i64 %150, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32, i32* %15, align 4
  %155 = call i8* @readw(i32 %154)
  %156 = ptrtoint i8* %155 to i16
  %157 = load i16*, i16** %21, align 8
  %158 = getelementptr inbounds i16, i16* %157, i32 1
  store i16* %158, i16** %21, align 8
  store i16 %156, i16* %157, align 2
  br label %149

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %147
  br label %161

161:                                              ; preds = %160, %130
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @PCIRC, align 4
  %164 = call i32 @pcc_get(i32 %162, i32 %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* @PCIRC_BWERR, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %11, align 8
  %171 = mul i64 %170, 8
  %172 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %169, i64 %171)
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @PCIRC, align 4
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @pcc_set(i32 %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %168, %161
  %178 = load i64, i64* %11, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 5
  store i64 %178, i64* %180, align 8
  %181 = load i32, i32* %17, align 4
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @spin_unlock_irqrestore(i32* @pcc_lock, i32 %184)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @pcc_set(i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i8* @readb(i32) #1

declare dso_local i32 @writew(i16 zeroext, i32) #1

declare dso_local i8* @readw(i32) #1

declare dso_local i32 @pcc_get(i32, i32) #1

declare dso_local i32 @printk(i8*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
