; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_cobra.c_cobra_read_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_cobra.c_cobra_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@COBRA_MAX_STROBE = common dso_local global i32 0, align 4
@COBRA_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.gameport*, i32*)* @cobra_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @cobra_read_packet(%struct.gameport* %0, i32* %1) #0 {
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.gameport*, %struct.gameport** %3, align 8
  %17 = load i32, i32* @COBRA_MAX_STROBE, align 4
  %18 = call i32 @gameport_time(%struct.gameport* %16, i32 %17)
  store i32 %18, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %33, %2
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %24
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %27
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @COBRA_MAX_STROBE, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  br label %19

36:                                               ; preds = %19
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @local_irq_save(i64 %37)
  %39 = load %struct.gameport*, %struct.gameport** %3, align 8
  %40 = call zeroext i8 @gameport_read(%struct.gameport* %39)
  store i8 %40, i8* %6, align 1
  br label %41

41:                                               ; preds = %131, %36
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.gameport*, %struct.gameport** %3, align 8
  %49 = call zeroext i8 @gameport_read(%struct.gameport* %48)
  store i8 %49, i8* %7, align 1
  store i32 0, i32* %12, align 4
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %7, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %51, %53
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %8, align 1
  br label %56

56:                                               ; preds = %115, %41
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i1 [ false, %56 ], [ %62, %59 ]
  br i1 %64, label %65, label %122

65:                                               ; preds = %63
  %66 = load i8, i8* %8, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 48
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %114

70:                                               ; preds = %65
  %71 = load i8, i8* %8, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 48
  %74 = icmp slt i32 %73, 48
  br i1 %74, label %75, label %109

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @COBRA_LENGTH, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %75
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %82
  %89 = load i8, i8* %8, align 1
  %90 = zext i8 %89 to i32
  %91 = ashr i32 %90, 5
  %92 = and i32 %91, 1
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = shl i32 %92, %96
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %106
  store i32 %104, i32* %107, align 4
  %108 = load i8, i8* %7, align 1
  store i8 %108, i8* %6, align 1
  br label %113

109:                                              ; preds = %82, %75, %70
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %111
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %88
  br label %114

114:                                              ; preds = %113, %65
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  %118 = load i8, i8* %8, align 1
  %119 = zext i8 %118 to i32
  %120 = ashr i32 %119, 2
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %8, align 1
  br label %56

122:                                              ; preds = %63
  br label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 0
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi i1 [ true, %123 ], [ %130, %127 ]
  br i1 %132, label %41, label %133

133:                                              ; preds = %131
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @local_irq_restore(i64 %134)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %231, %133
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 2
  br i1 %138, label %139, label %234

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @COBRA_LENGTH, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %231

147:                                              ; preds = %139
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %180, %147
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @COBRA_LENGTH, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 1090785407
  %158 = xor i32 %157, 1090785344
  %159 = icmp ne i32 %158, 0
  br label %160

160:                                              ; preds = %152, %148
  %161 = phi i1 [ false, %148 ], [ %159, %152 ]
  br i1 %161, label %162, label %183

162:                                              ; preds = %160
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = ashr i32 %166, 1
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 1
  %173 = load i32, i32* @COBRA_LENGTH, align 4
  %174 = sub nsw i32 %173, 1
  %175 = shl i32 %172, %174
  %176 = or i32 %167, %175
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %178
  store i32 %176, i32* %179, align 4
  br label %180

180:                                              ; preds = %162
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %148

183:                                              ; preds = %160
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @COBRA_LENGTH, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load i32, i32* %12, align 4
  %189 = shl i32 1, %188
  %190 = load i32, i32* %14, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %14, align 4
  br label %192

192:                                              ; preds = %187, %183
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = ashr i32 %196, 7
  %198 = and i32 %197, 31
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 8
  %204 = and i32 %203, 992
  %205 = or i32 %198, %204
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = ashr i32 %209, 9
  %211 = and i32 %210, 31744
  %212 = or i32 %205, %211
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 10
  %218 = and i32 %217, 1015808
  %219 = or i32 %212, %218
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = ashr i32 %223, 11
  %225 = and i32 %224, 32505856
  %226 = or i32 %219, %225
  %227 = load i32*, i32** %4, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %226, i32* %230, align 4
  br label %231

231:                                              ; preds = %192, %146
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %12, align 4
  br label %136

234:                                              ; preds = %136
  %235 = load i32, i32* %14, align 4
  %236 = trunc i32 %235 to i8
  ret i8 %236
}

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local zeroext i8 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
